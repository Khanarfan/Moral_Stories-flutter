
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:your_app_name/model/story.dart';

class StoryDatabase {
  static final StoryDatabase instance = StoryDatabase._init();
  static Database? _database;

  StoryDatabase._init();

  Future<Database> get database async{
    if(_database !=null) return _database!;

    _database = await _initDB('story.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath,filePath);

    return openDatabase(path, version: 1, onCreate: _createDB);
  }
  Future _createDB(Database db, int version)async{
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    await db.execute('''
    CREATE TABLE $tableStory (
      ${StoryFields.id} $idType,
      ${StoryFields.title} $textType,
      ${StoryFields.description} $textType
    )
    ''');
  }

  Future<Story> create(Story story) async{
     final db = await instance.database;

    // final columns = '${StoryFields.title}, ${StoryFields.description}';
    // final values = '${json[StoryFields.title]}, ${json[StoryFields.description]}';

    // final id=await db.rawInsert('INSERT  INTO table_name($columns) VALUES ($values)');
    final id = await db.insert(tableStory, story.toJson());
    return story.copy(id:id);
  }

  Future<Story?> readStory(int id) async{
    final db = await instance.database;
    final maps = await db.query(
      tableStory,
      columns: StoryFields.values,
      where: '${StoryFields.id} = ?',
      whereArgs: [id],
    );
    if(maps.isNotEmpty){
      return Story.fromJson(maps.first);
    }else{
      throw Exception('ID $id not found');
    }
  }

  Future<List<Story>> readAllStory() async {
    final db = await instance.database;
    final orderBy = '${StoryFields.id} ASC';

    final result = await db.query(tableStory, orderBy: orderBy);
    return result.map((json) => Story.fromJson(json)).toList();

  }

  Future<int> update(Story story) async{
    final db = await instance.database;
    return db.update(
      tableStory,
      story.toJson(),
      where: '${StoryFields.id} = ?',
      whereArgs: [story.id]
      
    );
  }

  Future<int> delete(int id) async{
    final db = await instance.database;
    return await db.delete(
      tableStory,
      where: '${StoryFields.id} = ?',
      whereArgs: [id],);
  }
  
  Future close() async{
   final db = await instance.database;

   db.close(); 
  }
}