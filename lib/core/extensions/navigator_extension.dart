import 'package:ruskvant_todos/core/core.dart';

extension NavigatorStateExtension on NavigatorState {
  void go(Widget screen) => push(
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );
}
