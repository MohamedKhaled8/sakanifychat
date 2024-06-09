class Validator {
  static bool isEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool isPassword(String password) {
    return password.length >= 8;
  }

  // Function to validate name
  static bool isName(String name) {
    return RegExp(r'^[a-zA-Z\s]+$').hasMatch(name);
  }

  static bool isNumber(String number) {
    return double.tryParse(number) != null;
  }

  static bool isFirstName(String firstName) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(firstName);
  }

  static bool isLastName(String lastName) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(lastName);
  }
}