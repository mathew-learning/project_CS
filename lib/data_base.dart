import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:project_jus/jus_login.dart';
import 'package:sqflite/sqflite.dart';

class user{
  final int id;
  final String username;
  final String password;
  const user({
    required this.id,
    required this.username,
    required this.password,
  });
}
