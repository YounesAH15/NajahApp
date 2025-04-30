class Goal {
  final String id;
  final String userId;
  final String title;
  final String description;
  final DateTime createdAt;

  Goal({
    required this.id,
    required this.userId,
    required this.title,
    this.description = '',
    required this.createdAt,
  });
}