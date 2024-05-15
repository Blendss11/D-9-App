class FormatException implements Exception {
    final String message;

    const FormatException([this.message = 'An unexpected format error occured. Please check your input.']);

    factory FormatException.fromMessage(String message) {
        return FormatException(message);
    }

    String get formattedMessage => message;

    factory FormatException.fromCode(String code){
        switch (code) {
            case 'invalid-email-format':
                return FormatException('Alamat email tidak valid, silahkan masukkan email yang valid.');
            case 'invalid-phone-number-format':
                return FormatException('Nomor HP anda tidak valid, silahkan masukkan nomor HP yang valid.');
            case 'invalid-date-format':
                return FormatException('Tanggal tidak valid, silahkan masukkan tanggal yang valid.');
            case 'invalid-url-format':
                return FormatException('URL yang anda masukkan tidak valid, silahkan masukkan URL yang valid.');
            case 'invalid-credit-card-format':
                return FormatException('Credit card email tidak valid, silahkan masukkan credit card yang valid.');
            case 'invalid-numeric-format':
                return FormatException('Harus masukkan numeric yang valid.');
        }
    }
    
}