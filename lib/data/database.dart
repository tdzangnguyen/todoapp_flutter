import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabases() {
    _myBox.put("TODOLIST", toDoList);
  }
}
