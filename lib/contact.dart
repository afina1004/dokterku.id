class Contact {

  int _id;
  String _name;
  String _desk;
  String _obat;

  // konstruktor versi 1
  Contact(this._name, this._desk, this._obat);
  // konstruktor versi 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._desk = map['desk'];
    this._obat = map['obat'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  String get name => _name;
  String get desk => _desk;
  String get obat=> _obat;
  // setter
  set name(String value) {
    _name = value;
  }
  set desk(String value) {
    _desk = value;
  }

  set obat(String value){
    _obat = value;
  }
  // konversi dari Contact ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['desk'] = desk;
    map['obat'] = obat;
    return map;
  }
}