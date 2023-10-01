import 'package:tithiz/Model/User/User.dart';

abstract class UserRepository{
  Future<void> getUser({required String email,required String password});
}