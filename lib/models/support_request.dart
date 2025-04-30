class SupportRequest {
  final String id;
  final String userId;
  final String subject;
  final String message;
  final DateTime createdAt;

  SupportRequest({
    required this.id,
    required this.userId,
    required this.subject,
    required this.message,
    required this.createdAt,
  });
}
