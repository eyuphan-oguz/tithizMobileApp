class User {
  int? _id;
  String? _email;
  String? _password;
  String? _role;

  User({int? id, String? email, String? password, String? role}) {
    if (id != null) {
      this._id = id;
    }
    if (email != null) {
      this._email = email;
    }
    if (password != null) {
      this._password = password;
    }
    if (role != null) {
      this._role = role;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get role => _role;
  set role(String? role) => _role = role;

  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _email = json['email'];
    _password = json['password'];
    _role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['email'] = this._email;
    data['password'] = this._password;
    data['role'] = this._role;
    return data;
  }
}