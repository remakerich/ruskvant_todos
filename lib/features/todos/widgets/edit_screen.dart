import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/controllers/todos_controller.dart';

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
        Get.find<TodosController>().deleteTodo();
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
        _BackButton(),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: context.navigator.pop,
      child: const Text('Back'),
    );
  }
}

class _TitleEditField extends StatelessWidget {
  const _TitleEditField();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Get.find<TodosController>().titleController,
      onChanged: Get.find<TodosController>().changeTitle,
    );
  }
}

class _StatusCheckbox extends GetView<TodosController> {
  const _StatusCheckbox();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final editedId = controller.editedTodoId.value;
      final value = controller.myTodos[editedId]?.completed ?? false;

      return Row(
        children: [
          Checkbox(
            onChanged: (_) => controller.toggleStatus(editedId),
            value: value,
          ),
          const Text('Completed'),
        ],
      );
    });
  }
}
