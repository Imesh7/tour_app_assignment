import 'package:test/core/usecase.dart';
import 'package:test/features/explore/data/models/living_style.dart';
import 'package:test/features/explore/data/models/other_exp.dart';
import 'package:test/features/explore/data/models/trips.dart';
import 'package:test/features/explore/domain/repository/explore_repository.dart';

class ExploreTripsUsecase extends Usecase<List<Trips>, NoParams> {
  final ExploreRepository exploreRepository;

  ExploreTripsUsecase(this.exploreRepository);

  @override
  Future<List<Trips>> call(NoParams params) {
    return exploreRepository.fetchTrips();
  }
}

class ExploreLivingStylesUsecase extends Usecase<List<LivingStyle>, NoParams> {
  final ExploreRepository exploreRepository;

  ExploreLivingStylesUsecase(this.exploreRepository);

  @override
  Future<List<LivingStyle>> call(NoParams params) {
    return exploreRepository.fetchLivingStyles();
  }
}

class ExploreOtherExpUsecase extends Usecase<List<OtherExp>, NoParams> {
  final ExploreRepository exploreRepository;

  ExploreOtherExpUsecase(this.exploreRepository);

  @override
  Future<List<OtherExp>> call(NoParams params) {
    return exploreRepository.fetchOtherExperiences();
  }
}