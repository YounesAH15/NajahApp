import 'package:najah_app/models/goal.dart';
import 'package:najah_app/models/step_model.dart';

abstract class CalendarService {
  Future<void> initialize();
  Future<void> syncGoalsToCalendar(List<Goal> goals, List<StepModel> steps);
  Future<List<CalendarEvent>> fetchEventsForDay(DateTime day);
}

class CalendarEvent {
  // To Do : create in models
}