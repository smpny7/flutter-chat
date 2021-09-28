import 'package:flutter/material.dart';
import 'package:flutter_chat/ui/bottom_sheet/user_name_setter.dart';

class UserBottomSheet {
  void showBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      builder: (_) => const UserNameSetter(),
    );
  }
}
