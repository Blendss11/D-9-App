// ignore_for_file: public_member_api_docs, sort_constructors_first
class TFirebaseException implements Exception {
  final String code;
  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'Unknown Firebase Error Occured. Please Try Again';
      case 'invalid-custom-token':
        return 'Custom token salah. Coba lagi';
      case 'custom-token-missmatch':
        return 'Custom token tidak cocok';
      case 'user-disabled':
        return 'Akun ini tidak bisa digunakan. Silahkan hubungi customer service';
      case 'user-not-found':
        return 'Akun tidak ditemukan';
      case 'wrong-password':
        return 'Password salah';
      case 'invalid-email':
        return 'Email salah';
      case 'email-already-in-use':
        return 'Email ini sudah terdaftar di akun lain';
      case 'weak-password':
        return 'Password mudah dibobol, buatlah password yang lebih rumit';
      case 'email-already-existed':
        return 'Email already exist. Please use another email';
      case 'provider-already-linked':
        return 'Akun ini sudah terhubung dengan media lain';

      default:
        return 'Unexpected error';
    }
  }
}
