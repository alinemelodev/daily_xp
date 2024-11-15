import 'package:daily_xp/components/task.dart';
import 'package:daily_xp/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT,'
      '$_difficulty INTEGER,'
      '$_image TEXT)';

  static const String _tablename = 'taskTable';

  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task task) async {
    final Database taskDb = await getDatabase();
    var itemExists = await find(task.name);
    Map<String, dynamic> taskMap = toMap(task);
    if (itemExists.isEmpty) {
      return await taskDb.insert(_tablename, taskMap);
    } else {
      return await taskDb.update(
        _tablename,
        taskMap,
        where: '$_name = ?',
        whereArgs: [task.name],
      );
    }
  }

  Map<String, dynamic> toMap(Task task) {
    final Map<String, dynamic> taskMap = {};
    taskMap[_name] = task.name;
    taskMap[_difficulty] = task.difficulty;
    taskMap[_image] = task.photo;
    return taskMap;
  }

  Future<List<Task>> findAll() async {
    final Database tasksDb = await getDatabase();
    final List<Map<String, dynamic>> result = await tasksDb.query(_tablename);
    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> taskMap) {
    final List<Task> tasks = [];
    for (Map<String, dynamic> line in taskMap) {
      final Task task = Task(
        line[_name],
        line[_image],
        line[_difficulty],
      );
      tasks.add(task);
    }
    return tasks;
  }

  Future<List<Task>> find(String taskName) async {
    final Database taskDb = await getDatabase();
    final List<Map<String, dynamic>> result = await taskDb.query(
      _tablename,
      where: '$_name = ?',
      whereArgs: [taskName],
    );
    return toList(result);
  }

  delete(String taskName) async {
    final Database taskDb = await getDatabase();
    return taskDb.delete(
      _tablename,
      where: '$_name = ?',
      whereArgs: [taskName],
    );
  }
}
