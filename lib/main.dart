import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:telegram_redesign/providers/chatList_provider.dart';
import 'package:telegram_redesign/providers/chat_provider.dart';
import 'package:telegram_redesign/providers/theme_provider.dart';
import 'package:telegram_redesign/resources/data.dart';
import 'package:telegram_redesign/resources/theme.dart';
import 'package:telegram_redesign/screens/homescreen.dart';
import 'package:telegram_redesign/screens/bottom_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
          ChangeNotifierProvider<ChatListProvider>(
              create: (_) => ChatListProvider()),
          ChangeNotifierProvider<ChatProvider>(create: (_) => ChatProvider())
        ],
        child: ScreenUtilInit(
          builder: (context) {
            // final themeMode = Provider.of<ThemeProvider>(context).themeMode;
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode: ThemeMode.light,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              home: const BottomNavigator(),
            );
          },
          minTextAdapt: true,
          designSize: const Size(414, 896),
        ));
  }
}
