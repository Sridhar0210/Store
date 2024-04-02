class StoreValidator {
  //email validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final emailRegExp = RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  // password validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "password is required";
    }
    // check for  6 letter password
    if (value.length < 6 || value.length > 6) {
      return 'password is 6 character long';
    }
    // check for  password should contain atLeast 1 uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      // password should contain atLeast 1 uppercase
      return 'password should contain atLeast 1 uppercase';
    }
    // check for  password should contain atLeast 1 lowercase

    if (!value.contains(RegExp(r'[a-z]'))) {
      // password should contain atLeast 1 lowercase
      return 'password should contain atLeast 1 lowercase';
    }
    // check for  password should contain atLeast 1 number

    if (!value.contains(RegExp(r'[0-9]'))) {
      // password should contain atLeast 1 number
      return 'password should contain atLeast 1 number';
    }
    // check for  password should contain atLeast 1 special character

    if (!value.contains(RegExp(r'[!@#$%^&*()_<>?/":;|]'))) {
      // password should contain atLeast 1 special character
      return 'password should contain atLeast 1 special character';
    }

    return null;
  }

  // Phone Number validation
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format ';
    }
    return null;
  }
}
