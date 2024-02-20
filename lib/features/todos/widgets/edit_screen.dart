import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/controllers/todos_controller.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit TODO'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const _Body(),
        ),
      ),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton();

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      onTap: () {
        context.navigator.pop();
        Get.find<TodosController>().deleteTodo();
      },
      text: 'Delete',
      icon: Icons.delete,
      color: Colors.red,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        _TitleEditField(),
        _StatusCheckbox(),
        _DeleteButton(),
        _BackButton(),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      onTap: context.navigator.pop,
      text: 'Back',
      icon: Icons.chevron_left,
    );
  }
}

class _TitleEditField extends StatelessWidget {
  const _TitleEditField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          hintText: 'Enter todo text',
        ),
        controller: Get.find<TodosController>().titleController,
        onChanged: Get.find<TodosController>().changeTitle,
      ),
    );
  }
}

class _StatusCheckbox extends GetView<TodosController> {
  const _StatusCheckbox();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final editedId = controller.editedTodoId.value;
        final value = controller.myTodos[editedId]?.completed ?? false;

        return Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () => controller.toggleStatus(editedId),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Checkbox(
                    onChanged: (_) => controller.toggleStatus(editedId),
                    value: value,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Completed',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
