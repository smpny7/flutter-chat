import 'package:flutter/material.dart';
import 'package:flutter_chat/model/fetch_message.dart';
import 'package:flutter_chat/model/user.dart';
import 'package:flutter_chat/view_model/user_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'left_balloon.dart';
import 'right_balloon.dart';
import 'text_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final fetchMessageProvider = context.watch<FetchMessageProvider>();
    final userProvider = context.watch<UserProvider>();
    context.read<FetchMessageProvider>().fetchMessageList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'チャットアプリ',
          style: TextStyle(color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => UserBottomSheet().showBottomSheet(context),
            icon: const Icon(
              Icons.supervised_user_circle,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
              child: fetchMessageProvider.messages != null
                  ? fetchMessageProvider.messages!.isNotEmpty
                      ? Column(
                          children: [
                            Container(height: 16),
                            ...fetchMessageProvider.messages!
                                .map((e) => e.userName == userProvider.userName
                                    ? RightBalloon(message: e)
                                    : LeftBalloon(message: e))
                                .toList(),
                            Container(height: 16),
                          ],
                        )
                      : const Text('メッセージなし')
                  : const Text('読み込み中'),
            ),
          ),
          const TextInput(),
        ],
      ),
    );
  }
}
