// ignore_for_file: public_member_api_docs, sort_constructors_first
class TFirebaseAuthException implements Exception {
  final String code;
  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'Email sudah terdaftar. Silahkan gunakan email lain';
      case 'invalid-email':
        return 'Email anda tidak valid. Silahkan gunakan email yang valid';
      case 'weak-password':
        return 'Password anda terlalu mudah. Silahkan buat password yang rumit';
      case 'user-disabled':
        return 'Akun ini tidak bisa digunakan. Silahkan hubungi customer service';
      case 'user-not-found':
        return 'Akun tidak ditemukan';
      case 'wrong-password':
        return 'Password salah';
      case 'invalid-verification-code':
        return 'Code anda salah';
      case 'invalid-verification-id':
        return 'Verifikasi ID anda salah!';
      case 'quota-exceeded':
        return 'Server penuh. Coba lain kali';
      case 'email-already-existed':
        return 'Email already exist. Please use another email';
      case 'provider-already-linked':
        return 'Akun ini sudah terhubung dengan media lain';

      default:
        return 'Unexpected error';
    }
  }
}
