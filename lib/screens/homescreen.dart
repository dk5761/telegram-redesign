import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:telegram_redesign/providers/chatList_provider.dart';
import 'package:telegram_redesign/resources/data.dart';
import 'package:telegram_redesign/screens/user_chat_screen.dart';
import 'package:telegram_redesign/widgets/custom_list_tile.dart';

import '../providers/chat_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Provider.of<ChatListProvider>(context, listen: false)
          .populateChatList(chatList);
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChatListProvider>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              'Chats',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView.builder(
            itemBuilder: ((context, index) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    Provider.of<ChatProvider>(context, listen: false)
                        .getChats(provider.chatList[index].id);
                    return UserChat(user: provider.chatList[index]);
                  }));
                },
                child: CustomListTile(chatItem: provider.chatList[index]))),
            itemCount: provider.length,
          ),
        ));
  }
}
