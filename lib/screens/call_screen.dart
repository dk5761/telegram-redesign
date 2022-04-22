import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            'Calls',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
    );
  }
}
