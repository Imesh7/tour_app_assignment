import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test/features/explore/domain/usecase/explore_usecase.dart';
import 'package:test/features/explore/ui/bloc/explore_bloc.dart';
import 'package:test/features/login/ui/bloc/login_bloc.dart';
import 'package:test/features/onboarding/ui/bloc/onboarding_bloc.dart';
import 'package:test/features/utils/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:test/inject.dart';

class BlocProviders {
  static List<SingleChildWidget> providers = [
    BlocProvider<OnboardingBloc>(create: (context) => OnboardingBloc()),

    BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
    BlocProvider<BottomNavBarBloc>(create: (context) => BottomNavBarBloc()),
    BlocProvider<ExploreBloc>(create: (context) => ExploreBloc(getIt<ExploreTripsUsecase>(),getIt<ExploreLivingStylesUsecase>(), getIt<ExploreOtherExpUsecase>())),
  ];
}
