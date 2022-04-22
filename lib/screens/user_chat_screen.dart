import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:telegram_redesign/models/chat_list.dart';
import 'package:telegram_redesign/providers/chat_provider.dart';
import 'package:telegram_redesign/widgets/image_holder.dart';
import 'package:telegram_redesign/widgets/message_text.dart';
import 'package:telegram_redesign/widgets/text_input.dart';

class UserChat extends StatefulWidget {
  const UserChat({Key? key, required this.user}) : super(key: key);

  final Chat user;

  @override
  State<UserChat> createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16.h,
          ),
        ),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ImageHolder(
            imageUrl: widget.user.profileImage.toString(),
          ),
          title: Text(
            widget.user.username.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
              child: ListView.builder(
            reverse: true,
            itemBuilder: ((context, index) {
              return MessageText(
                messageItem: chatProvider.messages[index],
                profileImage: widget.user.profileImage.toString(),
              );
            }),
            itemCount: 25,
          )),
          Container(
              padding:
                  EdgeInsets.only(left: 7.w, bottom: 8.h, right: 7.w, top: 8.h),
              child: ChatTextInput(
                messageController: messageController,
              ))
        ]),
      ),
    );
  }
}
