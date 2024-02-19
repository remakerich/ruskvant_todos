import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/core/extensions/navigator_extension.dart';
import 'package:ruskvant_todos/features/todos/controllers/todos_controller.dart';
import 'package:ruskvant_todos/features/todos/widgets/edit_screen.dart';

class HomeScreen extends GetView<TodosController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final isSuccess = controller.todosState.value is AsyncData;

        return Scaffold(
          appBar: AppBar(
            title: const Text('My TODOs'),
          ),
          floatingActionButton: isSuccess ? const _AddFab() : null,
          body: const _Body(),
        );
      },
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
        Get.find<TodosController>().createTodo();
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }
}

class _Body extends GetView<TodosController> {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final state = controller.todosState.value;

        return state.when(
          loading: _LoadingIndicator.new,
          data: _TodosList.new,
          error: _ErrorMessage.new,
        );
      },
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

class _ErrorMessage extends GetView<TodosController> {
  const _ErrorMessage();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () {
            final errorMessage = controller.errorMessage.value;

            return Text(
              errorMessage,
              style: const TextStyle(
                color: Colors.red,
              ),
            );
          },
        ),
        TextButton(
          onPressed: controller.fetchTodos,
          child: const Text('Refresh'),
        ),
      ],
    );
  }
}

class _TodosList extends GetView<TodosController> {
  const _TodosList();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final ids = controller.myTodos.keys.toList();

      return ListView.separated(
        itemBuilder: (context, index) => _TodoItem(
          ids[index],
        ),
        itemCount: ids.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      );
    });
  }
}

class _TodoItem extends GetView<TodosController> {
  const _TodoItem(
    this.id,
  );

  final int id;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final title = controller.myTodos[id]?.title ?? '';
      final value = controller.myTodos[id]?.completed ?? false;

      return ListTile(
        title: Text(title),
        onTap: () {
          context.navigator.go(const EditScreen());
          controller.editTodo(id);
        },
        trailing: Checkbox(
          onChanged: (_) => controller.toggleStatus(id),
          value: value,
        ),
      );
    });
  }
}
