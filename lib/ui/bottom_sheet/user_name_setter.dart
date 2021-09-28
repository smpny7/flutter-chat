import 'package:flutter/material.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:provider/provider.dart';

class UserNameSetter extends StatelessWidget {
  const UserNameSetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textController =
        TextEditingController(text: context.read<UserProvider>().userName);

    return SizedBox(
      height: 410,
      child: Column(
        children: [
          Container(height: 40),
          const Icon(
            Icons.supervised_user_circle,
            color: Colors.blueAccent,
            size: 100,
          ),
          Container(height: 10),
          const Text(
            'ユーザ名を入力してください',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 40, 30, 40),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                counterText: '',
              ),
              maxLines: 1,
              maxLength: 24,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<UserProvider>().setUserName(textController.text);
              Navigator.pop(context);
            },
            child: const Text('保存'),
          )
        ],
      ),
    );
  }
}
