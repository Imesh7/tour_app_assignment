import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/features/chat/ui/chat_screen.dart';
import 'package:test/features/home/home.dart';
import 'package:test/features/profile/profile.dart';
import 'package:test/utils/colors.dart';
import '../../explore/ui/explore_screen.dart';
import 'bloc/bottom_nav_bar_bloc.dart';

@RoutePage()
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [
    const Home(),
    const ExploreScreen(),
    const ChatScreen(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.secondaryBackground,
        body: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            if (state is BottomNavBarItemChangedState) {
              return pages[state.currentIndex];
            } else {
              return pages[context.read<BottomNavBarBloc>().currentIndex];
            }
          },
        ),
        bottomNavigationBar: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            return BottomNavigationBar(
              backgroundColor: AppColor.background,
              // fixedColor: Colors.black,
              selectedItemColor: AppColor.primary,
              unselectedItemColor: Colors.black,
              currentIndex: BlocProvider.of<BottomNavBarBloc>(
                context,
              ).currentIndex,
              onTap: (index) {
                BlocProvider.of<BottomNavBarBloc>(
                  context,
                ).add(OnTapBottomNavBarItemEvent(index: index));
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
            );
          },
        ),
      ),
    );
  }
}
