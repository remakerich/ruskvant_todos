import 'package:ruskvant_todos/core/core.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.server(String? value) = FailureServer;
  const factory Failure.client(String? value) = FailureClient;

  String get message => when(
        server: (value) => value ?? 'Ошибка сервера',
        client: (value) => value ?? 'Ошибка клиента',
      );
}

Future<Either<Failure, T>> handleExceptions<T>(
  Future<T> Function() future,
) async {
  try {
    final result = await future();
    return Right(result);
  } on DioException catch (e) {
    return Left(Failure.server(e.toString()));
  } catch (e, trace) {
    return Left(Failure.client('$e $trace'));
  }
}
