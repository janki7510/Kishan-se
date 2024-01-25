class TFirebaseException implements Exception {
  final String message;

  TFirebaseException(this.message);
}

class TFormatException implements Exception {}

class TPlatformException implements Exception {
  final String message;

  TPlatformException(this.message);
}

class TFirebaseAuthException implements Exception {
  final String message;

  TFirebaseAuthException(this.message);
}
