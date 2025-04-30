class StepModel {
  final String id;
  final String goalId;
  final String title;
  final String description;
  final String status; // 'pending' or 'done'
  final DateTime? dueDate;

  StepModel({
    required this.id,
    required this.goalId,
    required this.title,
    this.description = '',
    this.status = 'pending',
    this.dueDate,
  });
}