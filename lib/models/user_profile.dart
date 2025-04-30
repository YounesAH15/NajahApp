class UserProfile {
  final String id;
  final String email;
  final String fullName;
  final String avatarUrl;
  final String primaryColor;
  final String theme;

  UserProfile({
    required this.id,
    required this.email,
    this.fullName = '',
    this.avatarUrl = '',
    this.primaryColor = '#2196F3',
    this.theme = 'light',
  });

  /// Creates a UserProfile from a Supabase row.
    factory UserProfile.fromMap(Map<String, dynamic> data) {
      return UserProfile(
        id: data['id'] as String,
        email: data['email'] as String,
        fullName: data['full_name'] as String? ?? '',
        avatarUrl: data['avatar_url'] as String? ?? '',
        primaryColor: data['primary_color'] as String? ?? '#2196F3',
        theme: data['theme'] as String? ?? 'light',
      );
    }

  /// If you really need it async, wrap it:
  static Future<UserProfile> fromMapAsync(Map<String, dynamic> data) {
    return Future.value(UserProfile.fromMap(data));
  }
}