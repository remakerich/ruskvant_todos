import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/controllers/todos_controller.dart';
import 'package:ruskvant_todos/features/todos/widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialBinding: TodosBinding(),
    );
  }
}

class TodosBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodosController());
  }
}
