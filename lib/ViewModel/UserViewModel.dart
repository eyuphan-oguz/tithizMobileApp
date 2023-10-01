import 'package:tithiz/Repository/User/UserAPI.dart';

class UserViewModel{
  UserAPI _userAPI = new UserAPI();

  void loginUser({required String email, required String password}){
    _userAPI.getUser(email: email, password: password);
  }
}