import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/utils/colors.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.secondaryBackground,
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width - 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),

              CircleAvatar(
                backgroundImage: AssetImage("assets/chat/chat-2.png"),
                radius: 50.0,
              ),
              SizedBox(height: 20.h),
              Text(
                "Lucy Bond",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.h),
              Text("lucybond08@gmail.com", style: TextStyle(fontSize: 16.sp)),
              SizedBox(height: 10.h),
              Padding(padding: const EdgeInsets.all(10.0), child: Divider()),
              SizedBox(height: 10.h),
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColor.background,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.person),
                ),
                title: Text(
                  "Personal details",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 10.h),

              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColor.background,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.settings),
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
