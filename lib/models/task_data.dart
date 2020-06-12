import 'package:flutter/foundation.dart';
import './task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

    List<Task> _tasks = [
        Task(title: 'Buy Milk'),
        Task(title: 'Buy Bread'),
        Task(title: 'Buy eggs'),
    ];

    // A getter
    int get taskCount {
        return _tasks.length;
    }

    void updateTask(e){
        _tasks.add(Task(title: e));
        notifyListeners();
    }

    UnmodifiableListView<Task> get tasks {
        return UnmodifiableListView(_tasks);
    }

    void updateIsDone(Task task){
        task.toggleTaskCompletion();
        notifyListeners();
    }

}