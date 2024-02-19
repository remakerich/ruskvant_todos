import 'package:ruskvant_todos/core/core.dart';

extension BuildContextExtension on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}
