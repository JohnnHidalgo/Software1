import 'package:basic/models/peopleModel.dart';
import 'package:basic/dao/peopleDAO.dart';

class PeopleRepositoryServiceDAO{
  static Future<List<People>> getAllPeople() async {
    final sql = '''SELECT * FROM ${CreatePeopleDAO.peopleTable}
    WHERE ${CreatePeopleDAO.isDeleted} = 0''';
    final data = await db.rawQuery(sql);
    List<People> peoples = List();

    for (final node in data) {
      final todo = People.fromJson(node);
      peoples.add(todo);
    }
    return peoples;
  }
  static Future<People> getPeople(int id) async {
    //final sql = '''SELECT * FROM ${DatabaseCreator.todoTable}
    //WHERE ${DatabaseCreator.id} = $id''';
    //final data = await db.rawQuery(sql);

    final sql = '''SELECT * FROM ${CreatePeopleDAO.peopleTable}
    WHERE ${CreatePeopleDAO.id} = ?''';

    List<dynamic> params = [id];
    final data = await db.rawQuery(sql, params);

    final todo = People.fromJson(data.first);
    return todo;
  }

  static Future<void> addPeople(People people) async {
    /*final sql = '''INSERT INTO ${DatabaseCreator.todoTable}
    (
      ${DatabaseCreator.id},
      ${DatabaseCreator.name},
      ${DatabaseCreator.info},
      ${DatabaseCreator.isDeleted}
    )
    VALUES
    (
      ${todo.id},
      "${todo.name}",
      "${todo.number}",
      ${todo.isDeleted ? 1 : 0}
    )''';*/

    final sql = '''INSERT INTO ${CreatePeopleDAO.peopleTable}
    (
      ${CreatePeopleDAO.id},
      ${CreatePeopleDAO.name},
      ${CreatePeopleDAO.number},
      ${CreatePeopleDAO.isDeleted}
    )
    VALUES (?,?,?,?)''';
    List<dynamic> params = [people.id, people.name, people.number, people.isDeleted ? 1 : 0];
    final result = await db.rawInsert(sql, params);
    CreatePeopleDAO.databaseLog('Add people', sql, null, result);
  }

  static Future<void> deleteTodo(People people) async {
    /*final sql = '''UPDATE ${DatabaseCreator.todoTable}
    SET ${DatabaseCreator.isDeleted} = 1
    WHERE ${DatabaseCreator.id} = ${todo.id}
    ''';*/

    final sql = '''UPDATE ${CreatePeopleDAO.peopleTable}
    SET ${CreatePeopleDAO.isDeleted} = 1
    WHERE ${CreatePeopleDAO.id} = ?
    ''';

    List<dynamic> params = [people.id];
    final result = await db.rawUpdate(sql, params);

    CreatePeopleDAO.databaseLog('Delete people', sql, null, result);
  }

  static Future<void> updateTodo(People people) async {
    /*final sql = '''UPDATE ${DatabaseCreator.todoTable}
    SET ${DatabaseCreator.name} = "${todo.name}"
    WHERE ${DatabaseCreator.id} = ${todo.id}
    ''';*/

    final sql = '''UPDATE ${CreatePeopleDAO.peopleTable}
    SET ${CreatePeopleDAO.name} = ?
    AND ${CreatePeopleDAO.number} = ?
    WHERE ${CreatePeopleDAO.id} = ?
    ''';

    List<dynamic> params = [people.name, people.id];
    final result = await db.rawUpdate(sql, params);

    CreatePeopleDAO.databaseLog('Update todo', sql, null, result);
  }

  static Future<int> peoplesCount() async {
    final data = await db.rawQuery('''SELECT COUNT(*) FROM ${CreatePeopleDAO.peopleTable}''');

    int count = data[0].values.elementAt(0);
    int idForNewItem = count++;
    return idForNewItem;
  }

}