class TFormatException implements Exception {
    final String message;

    const TFormatException([this.message = 'An unexpected format error occured. Please check your input.']);

    factory TFormatException.fromMessage(String message) {
        return TFormatException(message);
    }

    String get formattedMessage => message;

    factory TFormatException.fromCode(String code){
        switch (code) {
            case 'invalid-email-format':
                return TFormatException('Alamat email tidak valid, silahkan masukkan email yang valid.');
            case 'invalid-phone-number-format':
                return TFormatException('Nomor HP anda tidak valid, silahkan masukkan nomor HP yang valid.');
            case 'invalid-date-format':
                return TFormatException('Tanggal tidak valid, silahkan masukkan tanggal yang valid.');
            case 'invalid-url-format':
                return TFormatException('URL yang anda masukkan tidak valid, silahkan masukkan URL yang valid.');
            case 'invalid-credit-card-format':
                return TFormatException('Credit card email tidak valid, silahkan masukkan credit card yang valid.');
            case 'invalid-numeric-format':
                return TFormatException('Harus masukkan numeric yang valid.');
              default: 
              throw ArgumentError('Kode format tidak valid');
        }
    }
    
    
}