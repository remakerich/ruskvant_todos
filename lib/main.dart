import 'package:ruskvant_todos/core/core.dart';
import 'package:ruskvant_todos/features/todos/providers/todos_provider.dart';
import 'package:ruskvant_todos/features/todos/widgets/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
