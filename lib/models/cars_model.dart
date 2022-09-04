class CarModel {
  String? imageUrl;

  String? dollar;
  String? som;
  String? marka;
  String? dvigatel;
  String? age;
  String? kilometr;
  String? text;
  String? city;
  String? time;
  String? photo;

  CarModel({
    this.imageUrl,
    this.dollar,
    this.som,
    this.marka,
    this.dvigatel,
    this.age,
    this.kilometr,
    this.text,
    this.city,
    this.time,
    this.photo,
  });
}

class UserModel {
  String? name;
  int? age;

  UserModel({this.name, this.age});
}

List<UserModel> userModelList = [
  UserModel(name: 'test', age: 10),
  UserModel(name: 'test22', age: 10),
  UserModel(name: '444', age: 10),
  UserModel(name: '333', age: 10),
  UserModel(name: '1231', age: 10),
  UserModel(name: '12312', age: 10),
  UserModel(name: '12312', age: 10),
];
