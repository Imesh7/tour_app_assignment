import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test/core/usecase.dart';
import 'package:test/features/explore/data/models/living_style.dart';
import 'package:test/features/explore/data/models/other_exp.dart';
import 'package:test/features/explore/data/models/trips.dart';
import 'package:test/features/explore/domain/usecase/explore_usecase.dart';

part 'explore_event.dart';
part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(
    this._exploreTripsUsecase,
    this._exploreLivingStyleUsecase,
    this._exploreOtherExpUsecase,
  ) : super(ExploreState()) {
    on<LoadExploreScreenEvent>(loadData);
  }

  final ExploreTripsUsecase _exploreTripsUsecase;
  final ExploreLivingStylesUsecase _exploreLivingStyleUsecase;
  final ExploreOtherExpUsecase _exploreOtherExpUsecase;

  void loadData(event, emit) async {
    emit(
      state.copywith(
        isLoadingTrips: true,
        isLoadingLivingStyles: true,
        isLoadingOtherExp: true,
      ),
    );

    await Future.wait([loadsTrips(emit), loadsLivingStyles(emit), loadsOthrExp(emit)]);
  }

  Future<void> loadsTrips(emit) async {
    try {
      final trips = await _exploreTripsUsecase(NoParams());
      emit(
        state.copywith(
          trips: trips,
          isLoadingTrips: false,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> loadsLivingStyles(emit) async {
    try {
      final livingStyles = await _exploreLivingStyleUsecase(NoParams());
      emit(
        state.copywith(
          livingStyles: livingStyles,
          isLoadingLivingStyles: false,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> loadsOthrExp(emit) async {
    try {
      final otherExp = await _exploreOtherExpUsecase(NoParams());
      emit(
        state.copywith(
          otherExp: otherExp,
          isLoadingOtherExp: false,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
