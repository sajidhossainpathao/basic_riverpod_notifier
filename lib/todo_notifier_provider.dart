import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sajid/todo_model.dart';
import 'package:sajid/todo_model_notifier.dart';

final todoNotifierProvider = NotifierProvider<TodoModelNotifier, TodoModel>(
  TodoModelNotifier.new,
);
