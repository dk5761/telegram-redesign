import 'package:flutter/material.dart';
import 'package:telegram_redesign/models/chat.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_redesign/widgets/image_holder.dart';

// TODO: add popup menu on longpress and add emoji to the message.

class MessageText extends StatefulWidget {
  final Message messageItem;
  final String profileImage;

  const MessageText(
      {Key? key, required this.messageItem, required this.profileImage})
      : super(key: key);

  @override
  State<MessageText> createState() => _MessageTextState();
}

class _MessageTextState extends State<MessageText> {
  var selectionColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    const _currentUserId =
        "22"; // this should be retrieved from the user provider.

    if (widget.messageItem.senderId != _currentUserId) {
      return Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 91.w, bottom: 16.h, top: 16.h),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  color: const Color(0xffF3F3F3),
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: Text(
                widget.messageItem.message.toString(),
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Positioned(
              bottom: 5,
              child: ImageHolder(
                imageUrl: widget.profileImage,
                radius: 10,
              ),
            )
          ],
        ),
      ]));
    }

    return Container(
      color: selectionColor,
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        GestureDetector(
          onLongPress: () {},
          child: Container(
            margin: EdgeInsets.only(left: 91.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            child: Text(
              widget.messageItem.message.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.check,
            size: 12.h,
          ),
        )
      ]),
    );
  }
}
