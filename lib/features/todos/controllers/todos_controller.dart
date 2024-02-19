import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/data/todos_repository.dart';
import 'package:ruskvant_todos/features/todos/models/todo.dart';

class TodosController extends GetxController {
  final _todosRepository = TodosRepository();
  final todosState = const AsyncState.data().obs;
  final errorMessage = ''.obs;

  final myTodos = <int, Todo>{}.obs;

  final editedTodoId = 0.obs;
  final titleController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    todosState(const AsyncLoading());

    final result = await _todosRepository.getTodos();

    result.when(
      left: (failure) {
        todosState(const AsyncError());
        errorMessage(failure.message);
      },
      right: (data) {
        todosState(const AsyncData());
        myTodos(data);
      },
    );
  }

  void toggleStatus(int id) {
    final todo = myTodos[id];

    if (todo == null) {
      return;
    }

    final updatedTodos = Map<int, Todo>.from(myTodos);
    final updated = todo.copyWith(completed: !todo.completed);
    updatedTodos[id] = updated;
    myTodos(updatedTodos);
  }

  void createTodo() {
    late final int newId;

    if (myTodos.isEmpty) {
      newId = 1;
    } else {
      final lastId = myTodos.keys.toList().last;
      newId = lastId + 1;
    }

    final updatedTodos = Map<int, Todo>.from(myTodos);

    updatedTodos[newId] = Todo();
    myTodos(updatedTodos);
    editedTodoId(newId);
    titleController.clear();
  }

  void editTodo(int id) {
    editedTodoId(id);
    titleController.text = myTodos[id]?.title ?? '';
  }

  void changeTitle(String newTitle) {
    final todo = myTodos[editedTodoId.value];

    if (todo == null) {
      return;
    }

    final updatedTodos = Map<int, Todo>.from(myTodos);
    final updated = todo.copyWith(title: newTitle);
    updatedTodos[editedTodoId.value] = updated;
    myTodos(updatedTodos);
  }

  void deleteTodo() {
    final updatedTodos = Map<int, Todo>.from(myTodos);
    updatedTodos.remove(editedTodoId.value);
    myTodos(updatedTodos);
  }
}
