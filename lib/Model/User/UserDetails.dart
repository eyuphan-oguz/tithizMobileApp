class UserDetails {
  int? _id;
  int? _userId;
  String? _phoneNumber;

  UserDetails({int? id, int? userId, String? phoneNumber}) {
    if (id != null) {
      this._id = id;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (phoneNumber != null) {
      this._phoneNumber = phoneNumber;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) => _phoneNumber = phoneNumber;

  UserDetails.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _userId = json['userId'];
    _phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['userId'] = this._userId;
    data['phoneNumber'] = this._phoneNumber;
    return data;
  }
}