import 'dart:convert';

class Band {
  //Backend id
  String id;
  String name;
  int votes;

  //Inicializar las variables en el constructor para asignarles un valor
  Band({
    this.id,
    this.name,
    this.votes,
  });

  //Constructor factory que regresa una instancia de banda
  factory Band.fromMap(Map<String, dynamic> obj) => Band(
      id: obj.containsKey('id') ? obj['id'] : 'no-id',
      name: obj.containsKey('name') ? obj['name'] : 'no-name',
      votes: obj.containsKey('votes') ? obj['votes'] : 'no-votes');

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'votes': votes,
    };
  }
}
