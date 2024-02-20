import 'package:ruskvant_todos/core/core.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.onToggle,
    required this.value,
  });

  final String title;
  final bool value;
  final VoidCallback onTap;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: onToggle,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.transparent,
                  child: Checkbox(
                    onChanged: (_) => onToggle.call(),
                    value: value,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
