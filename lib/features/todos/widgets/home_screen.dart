import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/core/extensions/navigator_extension.dart';
import 'package:ruskvant_todos/features/todos/providers/todos_provider.dart';
import 'package:ruskvant_todos/features/todos/widgets/edit_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isSuccess = context.select<TodosProvider, bool>(
      (value) => value.todosState is AsyncData,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('My TODOs'),
      ),
      floatingActionButton: isSuccess ? const _AddFab() : null,
      body: const _Body(),
    );
  }
}

class _AddFab extends StatelessWidget {
  const _AddFab();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.navigator.go(const EditScreen());
        context.read<TodosProvider>().createTodo();
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final state = context.select<TodosProvider, AsyncState>(
      (value) => value.todosState,
    );

    return state.when(
      loading: _LoadingIndicator.new,
      data: _TodosList.new,
      error: _ErrorMessage.new,
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  const _ErrorMessage();

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.select<TodosProvider, String>(
      (value) => value.errorMessage,
    );

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorMessage,
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
        TextButton(
          onPressed: context.read<TodosProvider>().fetchTodos,
          child: const Text('Refresh'),
        ),
      ],
    );
  }
}

class _TodosList extends StatelessWidget {
  const _TodosList();

  @override
  Widget build(BuildContext context) {
    final ids = context.select<TodosProvider, List<int>>(
      (value) => value.myTodos.keys.toList(),
    );

    return ListView.separated(
      itemBuilder: (context, index) => _TodoItem(
        ids[index],
      ),
      itemCount: ids.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}

class _TodoItem extends StatelessWidget {
  const _TodoItem(
    this.id,
  );

  final int id;

  @override
  Widget build(BuildContext context) {
    final title = context.select<TodosProvider, String>(
      (value) => value.myTodos[id]?.title ?? '',
    );

    final value = context.select<TodosProvider, bool>(
      (value) => value.myTodos[id]?.completed ?? false,
    );

    return ListTile(
      title: Text(title),
      onTap: () {
        context.navigator.go(const EditScreen());
        context.read<TodosProvider>().editTodo(id);
      },
      trailing: Checkbox(
        onChanged: (_) => context.read<TodosProvider>().toggleStatus(id),
        value: value,
      ),
    );
  }
}
