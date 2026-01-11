import 'package:test/features/explore/data/models/trips.dart';

import '../../data/models/living_style.dart';
import '../../data/models/other_exp.dart';

abstract class ExploreRepository {
  Future<List<Trips>> fetchTrips();
  Future<List<LivingStyle>> fetchLivingStyles();
  Future<List<OtherExp>> fetchOtherExperiences();
}