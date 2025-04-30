import 'package:najah_app/models/goal.dart';
import 'package:najah_app/models/user_profile.dart';
import 'package:najah_app/services/abstract/abstract_profile_api.dart';
import 'abstract/database_service.dart';

class SupabaseDatabaseService implements DatabaseService {
  final ProfileApi _api;
  SupabaseDatabaseService({required ProfileApi api}) : _api = api;

  @override
  Future<UserProfile> getUserProfile(String userId) async {
    final raw = await _api.fetchProfile(userId); // Map<String,dynamic>?
   
    // sync way to get the profile
    if (raw == null) throw Exception('Not found');
    final profile = UserProfile.fromMap(raw);

    // async wrapper
    // final profile = await UserProfile.fromMapAsync(raw!);
    return profile;
  }
  // final SupabaseClient _client;

  @override
  Future<Goal> createGoal(Goal goal) {
    // TODO: implement createGoal
    throw UnimplementedError();
  }

  @override
  Future<void> deleteGoal(String goalId) {
    // TODO: implement deleteGoal
    throw UnimplementedError();
  }

  @override
  Future<List<Goal>> getGoals(String userId) {
    // TODO: implement getGoals
    throw UnimplementedError();
  }

  @override
  Future<void> updateGoal(Goal goal) {
    // TODO: implement updateGoal
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }

  // TODO: implement other methods...

}