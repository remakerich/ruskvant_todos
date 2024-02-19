import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/models/todo.dart';

class TodosRepository {
  Future<Either<Failure, Map<int, Todo>>> getTodos() async {
    return handleExceptions(
      () async {
        final response = await apiClient.getTodos();

        final entries = (response.data as List)
            .sublist(0, 5)
            .map((e) => Todo.fromJson(e))
            .map((e) => MapEntry(e.id, e));

        return Map.fromEntries(entries);
      },
    );
  }
}
