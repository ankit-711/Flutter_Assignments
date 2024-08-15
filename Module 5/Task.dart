class Task {
  int? id;
  String? name;
  String? description;
  var time;
  String? priority;
  bool isComplete = false;

  // ignore: non_constant_identifier_names
  TaskMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name;
    mapping['description'] = description;
    mapping['time'] = time;
    mapping['priority'] = priority;
    mapping['isComplete'] = isComplete ? 1 : 0;

    return mapping;
  }
}
