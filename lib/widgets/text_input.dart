import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTextInput extends StatelessWidget {
  TextEditingController messageController;

  ChatTextInput({Key? key, required this.messageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            constraints: BoxConstraints(minHeight: 45.h, maxHeight: 125.h),
            child: TextField(
              keyboardType: TextInputType.multiline,
              controller: messageController,
              minLines: 1,
              maxLines: 3,
              cursorColor: Color.fromARGB(255, 168, 168, 168),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  fillColor: const Color(0xffF3F3F3),
                  filled: true,
                  iconColor: Colors.black,
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:
                        const BorderSide(color: Color(0xffF3F3F3), width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:
                        const BorderSide(color: Color(0xffF3F3F3), width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:
                        const BorderSide(color: Color(0xffF3F3F3), width: 0),
                  ),
                  prefixIcon: Icon(
                    Icons.attach_file,
                    size: 23.h,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.mic_rounded,
                    size: 23.h,
                    color: Colors.black,
                  ),
                  hintText: "Type Message here"),
            ),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 22.h,
        )
      ],
    );
  }
}
