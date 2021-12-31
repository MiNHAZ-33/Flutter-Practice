class Files {
  int id;
  String name;
  String email;

  Files(this.id, this.name, this.email);

  factory  Files.fromJson(json){
    return Files(json['id'], json['name'], json['email']);
  }
}
