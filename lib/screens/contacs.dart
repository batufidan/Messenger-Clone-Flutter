import 'package:flutter/material.dart';
import 'package:mesenger_clone/widgets/circular_image.dart';
import 'package:mesenger_clone/widgets/conservation.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: AssetImage('images/m2.jpg'),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Text(
                                  '+9',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25),
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.add,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircularImage(
                    false,
                    img: 'm2.jpg',
                    online: true,
                  ),
                  CircularImage(
                    true,
                    img: 'm1.jpg',
                    online: false,
                  ),
                  CircularImage(
                    true,
                    img: 'w2.jpg',
                    online: true,
                  ),
                  CircularImage(
                    true,
                    img: 'w1.jpg',
                    online: true,
                  ),
                  CircularImage(
                    true,
                    img: 'm1.jpg',
                    online: true,
                  ),
                  CircularImage(
                    true,
                    img: 'w2.jpg',
                    online: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Conservation(
              image: 'm1.jpg',
              name: 'Batuhan Fidan',
              msg: 'U are amazing!!',
              isRead: false,
            ),
            Conservation(
              image: 'w1.jpg',
              name: 'Mary Smith',
              msg: 'I love Flutter :)',
              isRead: true,
            ),
            Conservation(
              image: 'm2.jpg',
              name: 'Batuhan Fidan',
              msg: 'I love you',
              isRead: true,
            ),
            Conservation(
              image: 'w2.jpg',
              name: 'Jay Marta',
              msg: 'Are you coming date?',
              isRead: false,
            ),
            Conservation(
              image: 'm1.jpg',
              name: 'Batuhan Fidan',
              msg: 'U are amazing!!',
              isRead: false,
            ),
            Conservation(
              image: 'w1.jpg',
              name: 'Mary Smith',
              msg: 'I love Flutter :)',
              isRead: false,
            ),
            Conservation(
              image: 'm2.jpg',
              name: 'Batuhan Fidan',
              msg: 'I love you',
              isRead: true,
            ),
            Conservation(
              image: 'w2.jpg',
              name: 'Jay Marta',
              msg: 'Are you coming date?',
              isRead: false,
            ),
          ],
        ),
      ),
    );
  }
}
