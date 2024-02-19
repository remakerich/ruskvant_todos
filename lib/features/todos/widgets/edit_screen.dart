import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/providers/todos_provider.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO'),
        actions: const [_DeleteButton()],
      ),
      body: const _Body(),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.navigator.pop();
        context.read<TodosProvider>().deleteTodo();
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _TitleEditField(),
        _StatusCheckbox(),
        _DoneButton(),
      ],
    );
  }
}

class _DoneButton extends StatelessWidget {
  const _DoneButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: context.navigator.pop,
      child: const Text('Done'),
    );
  }
}

class _TitleEditField extends StatelessWidget {
  const _TitleEditField();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: context.read<TodosProvider>().titleController,
      onChanged: context.read<TodosProvider>().changeTitle,
    );
  }
}

class _StatusCheckbox extends StatelessWidget {
  const _StatusCheckbox();

  @override
  Widget build(BuildContext context) {
    final editedId = context.select<TodosProvider, int>(
      (value) => value.editedTodoId,
    );

    final value = context.select<TodosProvider, bool>(
      (value) => value.myTodos[editedId]?.completed ?? false,
    );

    return Row(
      children: [
        Checkbox(
          onChanged: (_) =>
              context.read<TodosProvider>().toggleStatus(editedId),
          value: value,
        ),
        const Text('Completed'),
      ],
    );
  }
}
