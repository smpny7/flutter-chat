import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
        color: Colors.grey.shade100,
      ),
      padding: const EdgeInsetsDirectional.only(bottom: 30, top: 15),
      child: Row(
        children: [
          Container(width: 20),
          Expanded(
            child: Container(
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
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 200,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counterText: '',
                  ),
                  maxLines: null,
                  maxLength: 256,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () => print('HEY'),
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
