import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sajid/todo_model.dart';

class TodoModelNotifier extends Notifier<TodoModel> {
  @override
  TodoModel build() {
    return TodoModel(counter: 0);
  }

  void increaseCounter() {
    state = TodoModel(counter: state.counter + 1);
  }

  void decreaseCounter() {
    state = TodoModel(counter: state.counter - 1);
  }
}
