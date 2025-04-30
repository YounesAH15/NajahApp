import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:najah_app/services/abstract/abstract_profile_api.dart';
import 'package:najah_app/services/supabase_database_service.dart';

class MockProfileApi extends Mock implements ProfileApi {}

void main() {
  late SupabaseDatabaseService service;
  late MockProfileApi mockProfileApi;

  setUp(() {
    mockProfileApi = MockProfileApi();
    // Inject mock client
    service = SupabaseDatabaseService(api: mockProfileApi);
  });

  test('getUserProfile returns UserProfile when API returns data', () async {
    when(() => mockProfileApi.fetchProfile('user-1')).thenAnswer((_) async => {
      'id': 'user-1',
      'email': 'test@example.com',
      'full_name': 'Test User',
      'avatar_url': null,
      'primary_color': '#ff0000',
      'theme': 'dark',
    });

    final profile = await service.getUserProfile('user-1');
    expect(profile.id, 'user-1');
    expect(profile.email, 'test@example.com');
    expect(profile.fullName, 'Test User');
  });

  test('getUserProfile throws when API returns null', () {
    when(() => mockProfileApi.fetchProfile('user-1')).thenAnswer((_) async => null);
    expect(() => service.getUserProfile('user-1'), throwsException);
  });
}
  

