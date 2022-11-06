class States {
  String states;

  States({required this.states});

  factory States.fromJson(Map<String, dynamic> json) {
    return States(states: json["states"]);
  }

  // get map => states;
}