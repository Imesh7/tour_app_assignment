import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
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
            SizedBox(height: 35.h),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/chat/chat-2.png"),
                radius: 26.0,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kari Rasmussen",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15:23",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Thanks for contacting me!",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Text("5"),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/chat/chat-1.png"),
                radius: 26.0,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kari Rasmussen",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15:23",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Thanks for contacting me!",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Text("5"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
