import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// Variable
  /// Controller is used for control FirstNameField
  final firstName = TextEditingController();

  /// Controller is used for control LastNameField

  final lastName = TextEditingController();

  /// Controller is used for control UserNameField

  final userName = TextEditingController();

  /// Controller is used for control EmailField

  final email = TextEditingController();

  /// Controller is used for control PhoneNumberField

  final phoneNumber = TextEditingController();

  /// Controller is used for control PasswordField

  final password = TextEditingController();

  /// Global key for signup form
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SignUp Function
}
