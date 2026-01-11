import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/features/explore/ui/bloc/explore_bloc.dart';
import 'package:test/features/explore/ui/widgets/explore_card.dart';

@RoutePage()
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ExploreBloc>(context).add(LoadExploreScreenEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ExploreBloc, ExploreState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.filter_list),
                        filled: true,
                        hintText: 'Search address, city, location',

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find your next trip',
                          style: TextStyle(fontSize: 18.sp),
                        ),

                        Text("see all"),
                      ],
                    ),
                    SizedBox(height: 9.h),

                    state.isLoadingTrips
                        ? SizedBox(
                            height: 80,
                            child: Center(
                              child: const CircularProgressIndicator(),
                            ),
                          )
                        : SizedBox(
                            height: 228,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.trips.length,
                              itemBuilder: (context, index) {
                                return ExploreCard(
                                  title: state.trips[index].name,
                                  imageUrl: state.trips[index].image,
                                  subtitle: state.trips[index].rentedPropsCount
                                      .toString(),
                                );
                              },
                            ),
                          ),
                    SizedBox(height: 15.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore by living style',
                          style: TextStyle(fontSize: 18.sp),
                        ),

                        Text("see all"),
                      ],
                    ),
                    SizedBox(height: 13.h),

                    state.isLoadingLivingStyles
                        ? SizedBox(
                            height: 80,
                            child: Center(
                              child: const CircularProgressIndicator(),
                            ),
                          )
                        : SizedBox(
                            height: 210,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.livingStyles.length,
                              itemBuilder: (context, index) {
                                return ExploreCard(
                                  title: state.livingStyles[index].name,
                                  imageUrl: state.livingStyles[index].image,
                                );
                              },
                            ),
                          ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Want to discover other experiences',
                          style: TextStyle(fontSize: 18.sp),
                        ),

                        Text("see all"),
                      ],
                    ),
                    SizedBox(height: 13.h),

                    state.isLoadingOtherExp
                        ? SizedBox(
                            height: 80,
                            child: Center(
                              child: const CircularProgressIndicator(),
                            ),
                          )
                        : SizedBox(
                            height: 210,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.otherExp.length,
                              itemBuilder: (context, index) {
                                return ExploreCard(
                                  title: state.otherExp[index].name,
                                  imageUrl: state.otherExp[index].image,
                                );
                              },
                            ),
                          ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
