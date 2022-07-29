import 'package:flutter/foundation.dart';

class MatchFoot {
  late Fixtures fixtures;
  late Team home;
  late Team away;
  late Goal goal;

  MatchFoot(this.fixtures, this.home, this.away, this.goal);
  factory MatchFoot.fromJson(Map<String, dynamic> json) {
    return MatchFoot(
        Fixtures.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

class Fixtures {
  late int id;
  late DateTime date;
  late Status status;
  Fixtures(this.date, this.id, this.status);
  factory Fixtures.fromJson(Map<String, dynamic> json) {
    return Fixtures(DateTime.parse(json['date']), json['id'],
        Status.fromJson(json['status']));
  }
}

//
class Team {
  late int id;
  late String name;
  late String urllogo;
  late bool? winner;
  Team(this.id, this.name, this.urllogo, this.winner);
  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      json['id'],
      json['name'],
      json['logo'],
      json['winner'],
    );
  }
}

class Status {
  late int? elapsed;
  late String long;

  Status(this.elapsed, this.long);
  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

class Goal {
  late int? home;
  late int? away;

  Goal(this.home, this.away);
  // ignore: avoid_types_as_parameter_names
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
