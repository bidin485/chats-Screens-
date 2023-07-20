import 'package:chats/messages_screen.dart';
import 'package:chats/send_link_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnotherPage());
}

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 73),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xff2B5BBA)),
                        ),
                        child:const  Center(
                          child: Icon(
                            Icons.chevron_left,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Contacts',
                    style: TextStyle(
                      color: Color(0xff433D3D),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children:const  [
                  Expanded(
                    child: Text(
                      'Already on FinHub',
                      style: TextStyle(
                        color: Color(0xff2B5BBA),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           const  SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < 5; i++)
                    GestureDetector(
                      onTap: () {
                        // Navigate to another page when the item is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessagesScreen(),
                          ),
                        );
                      },
                    child:Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/face.png',
                            width: 45,
                            height: 45,
                          ),
                          const SizedBox(width: 20.0),
                         const Text(
                            'John Doe',
                            style: TextStyle(
                              color: Color(0xff433D3D),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),)
                ],
              ),
            ),
           const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children:const [
                   Expanded(
                    child: Text(
                      'Invite on FinHub',
                      style: TextStyle(
                        color: Color(0xff2B5BBA),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < 4; i++)
                          GestureDetector(
                      onTap: () {
                        // Navigate to another page when the item is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SendLinkPage(),
                          ),
                        );
                      },
                  child:  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/face.png',
                            width: 45,
                            height: 45,
                          ),
                          const SizedBox(width: 20.0),
                          const Text(
                            'John Doe',
                            style: TextStyle(
                              color: Color(0xff433D3D),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
              )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
