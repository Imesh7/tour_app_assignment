part of 'explore_bloc.dart';

class ExploreState {
  late final List<Trips> trips;
  late final List<LivingStyle> livingStyles;
  late final List<OtherExp> otherExp;

  late final bool isLoadingTrips;
  late final bool isLoadingLivingStyles;
  late final bool isLoadingOtherExp;

  late final String tripsError;
  late final String livingStylesError;
  late final String otherExpError;

  ExploreState({
    this.trips = const [],
    this.livingStyles = const [],
    this.otherExp = const [],
    this.isLoadingTrips = false,
    this.isLoadingLivingStyles = false,
    this.isLoadingOtherExp = false,
    this.tripsError = '',
    this.livingStylesError = '',
    this.otherExpError = '',
  });

  ExploreState copywith({
    List<Trips>? trips,
    List<LivingStyle>? livingStyles,
    List<OtherExp>? otherExp,
    bool? isLoadingTrips,
    bool? isLoadingLivingStyles,
    bool? isLoadingOtherExp,
    String? tripsError,
    String? livingStylesError,
    String? otherExpError,
  }) {
    return ExploreState(
      trips: trips ?? this.trips,
      livingStyles: livingStyles ?? this.livingStyles,
      otherExp: otherExp ?? this.otherExp,
      isLoadingTrips: isLoadingTrips ?? this.isLoadingTrips,
      isLoadingLivingStyles:
          isLoadingLivingStyles ?? this.isLoadingLivingStyles,
      isLoadingOtherExp: isLoadingOtherExp ?? this.isLoadingOtherExp,
      tripsError: tripsError ?? this.tripsError,
      livingStylesError: livingStylesError ?? this.livingStylesError,
      otherExpError: otherExpError ?? this.otherExpError,
    );
  }
}
