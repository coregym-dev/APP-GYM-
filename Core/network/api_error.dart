class ApiError {
  final String erroMessage;
  ApiError({required this.erroMessage});
  @override
  String toString() {
    return "${erroMessage}";
  }
}
