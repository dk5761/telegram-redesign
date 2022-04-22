import 'package:flutter/material.dart';
import 'package:telegram_redesign/models/chat_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_redesign/widgets/image_holder.dart';

class CustomListTile extends StatelessWidget {
  Chat chatItem;

  CustomListTile({Key? key, required this.chatItem}) : super(key: key);

  //it uses ListTile widget with inkwell and other properties as needed for the application

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      margin: EdgeInsets.symmetric(vertical: 24.h),
      child: ListTile(
        dense: true,
        leading: ImageHolder(imageUrl: chatItem.profileImage.toString()),
        title: Text(
          chatItem.username.toString(),
          style: Theme.of(context).textTheme.headline2,
        ),
        subtitle: Text(
          chatItem.lastMessage.toString(),
          style: Theme.of(context).textTheme.headline3,
        ),
        trailing: SizedBox(
          height: double.infinity,
          child: Text(
            chatItem.time.toString(),
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
