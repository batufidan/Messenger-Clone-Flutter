import 'package:flutter/material.dart';

class Conservation extends StatelessWidget {
  final String image;
  final String name;
  final String msg;
  final bool isRead;
  const Conservation(
      {Key? key,
      required this.image,
      required this.name,
      required this.msg,
      required this.isRead})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('images/$image'),
      ),
      title: Text(name),
      subtitle: Text(msg),
      trailing: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
            color: isRead ? Colors.white : Colors.blue,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 2)),
      ),
    );
  }
}
