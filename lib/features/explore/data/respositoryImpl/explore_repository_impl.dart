import 'package:test/core/api/api_client.dart';
import 'package:test/features/explore/data/models/living_style.dart';
import 'package:test/features/explore/data/models/other_exp.dart';
import 'package:test/features/explore/data/models/trips.dart';
import 'package:test/features/explore/domain/repository/explore_repository.dart';

class ExploreRepositoryImpl extends ExploreRepository {
  final ApiClient _apiClient;
  ExploreRepositoryImpl(this._apiClient);

  @override
  Future<List<Trips>> fetchTrips() async {
    try {
      final response = await _apiClient.dio.get('/trips.json');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => Trips.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load trips');
      }
    } catch (e) {
      throw Exception('Failed to load trips');
    }
  }

  @override
  Future<List<LivingStyle>> fetchLivingStyles() async {
    try {
     final response = await _apiClient.dio.get('/living-style.json');
        if (response.statusCode == 200) {
          final List<dynamic> data = response.data;
          return data.map((e) => LivingStyle.fromJson(e)).toList();
        } else {
          throw Exception('Failed to load living styles');
        }
    } catch (e) {
      throw Exception('Failed to load living styles');
    }
  }

  @override
  Future<List<OtherExp>> fetchOtherExperiences() async {
    try {
      final response = await _apiClient.dio.get('/other-experiences.json');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => OtherExp.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load other experiences');
      }
    } catch (e) {
      throw Exception('Failed to load other experiences');
    }
  } 
}
