import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/data/todos_repository.dart';
import 'package:ruskvant_todos/features/todos/models/todo.dart';

class TodosProvider extends ChangeNotifier {
  TodosProvider() {
    fetchTodos();
  }

  final TodosRepository _todosRepository = TodosRepository();
  AsyncState todosState = const AsyncData();
  String errorMessage = '';

  Map<int, Todo> myTodos = {};

  int editedTodoId = 0;
  final titleController = TextEditingController();

  Future<void> fetchTodos() async {
    todosState = const AsyncLoading();
    notifyListeners();

    final result = await _todosRepository.getTodos();

    result.when(
      left: (failure) {
        todosState = const AsyncError();
        errorMessage = failure.message;
        notifyListeners();
      },
      right: (data) {
        todosState = const AsyncData();
        myTodos = data;
        notifyListeners();
      },
    );
  }

  void toggleStatus(int id) {
    final todo = myTodos[id];

    if (todo == null) {
      return;
    }

    final updated = todo.copyWith(completed: !todo.completed);
    myTodos[id] = updated;
    notifyListeners();
  }

  void createTodo() {
    late final int newId;

    if (myTodos.isEmpty) {
      newId = 1;
    } else {
      final lastId = myTodos.keys.toList().last;
      newId = lastId + 1;
    }

    myTodos[newId] = Todo();
    editedTodoId = newId;
    titleController.clear();
    notifyListeners();
  }

  void editTodo(int id) {
    editedTodoId = id;
    titleController.text = myTodos[id]?.title ?? '';
    notifyListeners();
  }

  void changeTitle(String newTitle) {
    final todo = myTodos[editedTodoId];

    if (todo == null) {
      return;
    }

    final updated = todo.copyWith(title: newTitle);
    myTodos[editedTodoId] = updated;
    notifyListeners();
  }

  void deleteTodo() {
    myTodos.remove(editedTodoId);
    notifyListeners();
  }
}
