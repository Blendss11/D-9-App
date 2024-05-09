class TValidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName harus di isi';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email harus di isi.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password harus di isi.';
    }

    if (value.length < 6) {
      return 'Harus lebih dari 6 huruf.';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Harus memiliki 1 huruf besar.';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Harus memiliki sebuah angka';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor harus di isi.';
    }
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format (11 digit required).';
    }

    return null;
  }
}
