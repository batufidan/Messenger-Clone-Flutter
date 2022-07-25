import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String img;
  final bool status;
  final bool online;

  const CircularImage(
    this.status, {
    Key? key,
    required this.img,
    required this.online,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: status
                  ? Border.all(
                      color: Colors.blue,
                      width: 3,
                    )
                  : Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage('images/$img'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 2,
            child: Visibility(
              visible: online,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
