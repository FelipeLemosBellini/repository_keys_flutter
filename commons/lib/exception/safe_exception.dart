class SafeException implements Exception {
  final String message;

  SafeException({required this.message}) : super();
}
