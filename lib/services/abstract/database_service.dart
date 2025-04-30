import 'package:najah_app/models/goal.dart';
import 'package:najah_app/models/user_profile.dart';

abstract class DatabaseService {
  Future<UserProfile> getUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
  Future<List<Goal>> getGoals(String userId);
  Future<Goal> createGoal(Goal goal);
  Future<void> updateGoal(Goal goal);
  Future<void> deleteGoal(String goalId);
  // Methods for steps and requests...
}