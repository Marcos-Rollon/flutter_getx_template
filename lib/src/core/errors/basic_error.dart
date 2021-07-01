abstract class BasicError extends Error {
  late String localizedDescription;
  final ErrorCode code;

  BasicError(this.code) {
    this.localizedDescription = this.code.toString();
  }
}

class ErrorCode {
  final String _value;
  const ErrorCode._(this._value);

  // Basic errors
  static const ErrorCode notFound = ErrorCode._('Not found');
  static const ErrorCode serverError = ErrorCode._('Server error');
  static const ErrorCode serverTimeout = ErrorCode._('Server timeout');
  static const ErrorCode badCredentials = ErrorCode._('Bad Credentials');
  static const ErrorCode fatalError = ErrorCode._('Fatal Error');
  static const ErrorCode dbError = ErrorCode._("Database error");

  static ErrorCode fromLocalizedDescription(String s) {
    return ErrorCode._(s);
  }

  @override
  String toString() {
    return _value;
  }
}
