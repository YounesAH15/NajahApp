import 'package:najah_app/services/abstract/abstract_profile_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseProfileApi implements ProfileApi {
  final SupabaseClient _client;
  SupabaseProfileApi(this._client);

  @override
  Future<Map<String, dynamic>?> fetchProfile(String userId) {
    return _client
      .from('profiles')
      .select('id,email,full_name,avatar_url,primary_color,theme')
      .eq('id', userId)
      .maybeSingle();
  }
}