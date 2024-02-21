import 'package:flutter_login_exercise/model/post.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PostDatabase {
  static final PostDatabase instance = PostDatabase._init();

  static Database? _database;

  PostDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('posts.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENTATION';
    final textType = 'TEXT NOT NULL';

    await db.execute('''
    CREATE TABLE $tablePosts(
    ${PostFields.id} $idType,
    ${PostFields.content} $textType,
    ${PostFields.time} $textType,
    
    )
        ''');
  }

  Future<Post> create(Post post) async{
    final db = await instance.database;

    final id = await db.insert(tablePosts, post.toJson());
    return post.copy(id: id);
  }

  Future<Post> readPost(int id) async{
    final db = await instance.database;

    final maps = await db.query(
      tablePosts,
      columns: PostFields.values,
      where: '${PostFields.id} = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty){
      return Post.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }


  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
