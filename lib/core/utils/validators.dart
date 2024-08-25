class Validators {
  static String? basic(String? value) {
    if (value == null || value == '') {
      return "This field can't be empty";
    }
    return null;
  }
}