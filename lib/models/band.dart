class Band {
  //Backend id
  String id;
  String name;
  int votes;

  //Inicializar las variables en el constructor para asignarles un valor
  Band({this.id, this.name, this.votes});

  //Constructor factory que regresa una instancia de banda
  factory Band.fromMap(Map<String, dynamic> obj) =>
      Band(id: obj['id'], name: obj['name'], votes: obj['votes']);
}
