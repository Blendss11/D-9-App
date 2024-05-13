class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Login tidak valid. Mohon cek kembali informasi Anda.';
      case 'too-many-request':
        return 'Terlalu banyak permintaan. Coba lagi nanti.';
      case 'invalid-argument':
        return 'Argument tidak valid untuk autentikasi.';
      case 'invalid-password':
        return 'Password tidak benar. Silakan coba lagi.';
      case 'invalid-phone-number':
        return 'Nomor HP Anda tidak valid.';
      case 'operation-not-allowed':
        return 'Penyedia masuk dinonaktifkan untuk proyek Firebase Anda.';
      case 'session-cookie-expired':
        return 'Cookie sesi Firebase telah kedaluwarsa. Silakan sign in kembali.';
      case 'uid-already-exists':
        return 'User ID telah digunakan oleh pengguna lain.';
      case 'sign-in-failed':
        return 'Gagal sign-in. Silakan coba lagi.';
      case 'network-request-failed':
        return 'Jaringan buruk. Periksa kembali jaringan Anda.';
      case 'internal-error':
        return 'Kesalahan internal. Coba lagi nanti.';
      case 'invalid-verification-code':
        return 'Kode verifikasi tidak valid. Silakan masukkan kode verifikasi.';
      case 'invalid-verification-id':
        return 'ID tidak valid.';
      default:
        return 'Kode tidak dikenali: $code';
    }
  }
}
