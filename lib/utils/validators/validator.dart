class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required.';
    }

    if (value.length < 6) {
      return 'Harus lebih dari 6 huruf.';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Harus memiliki 1 huruf besar.';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Harus memiliki 1 number besar.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is Required.';
    }
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format (11 digit required).';
    }

    return null;
  }
}
