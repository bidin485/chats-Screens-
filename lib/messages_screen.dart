import 'package:chats/view_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MessagesScreen());
}

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  bool isBoxVisible = false;

  void _toggleBoxVisibility() {
    setState(() {
      isBoxVisible = !isBoxVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FractionallySizedBox(
          widthFactor: 1.0,
          heightFactor: 1.0, // Make the FractionallySizedBox fill the entire body
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Color(0xff2B5BBA),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 71, left: 23),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0xffFFFFFF)),
                              ),
                              child:const Center(
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 71, left: 23),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('images/face.png'),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 71, left: 23),
                          child: Column(
                            children: const [
                              Text(
                                'Josephine',
                                style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF),fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'online',
                                style: TextStyle(fontSize: 15, color: Color(0xffE0E0E0)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Padding(
                          padding: const EdgeInsets.only(top: 71, left: 23),
                          child: GestureDetector(
                            onTap: _toggleBoxVisibility, // Toggle the box visibility
                            child: const Icon(Icons.more_vert, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                 Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19, top: 36),
                      child: Container(
                        width: 126,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff2B5BBA),
                          border: Border.all(color: Color(0xff979797)),
                          borderRadius:const  BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const[
                            Text(
                              'Hello bro!',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              '11:00 AM',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 8, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),]),
                  
                  const SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left:184 ),
                    child: FractionallySizedBox(
                      widthFactor: 1.0,
                      child: Container(
                        height: 61,
                        decoration: BoxDecoration(
                          color: const Color(0xff2B5BBA),
                          border: Border.all(color: Color(0xff979797)),
                          borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Column(
                            children:const [
                              Text(
                                'Hello man!how',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                'have you been',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 8, color: Colors.white),
                              ),
                              Text(
                                '11:00 AM',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (isBoxVisible) // Show the rectangular box if isBoxVisible is true
                Positioned(
                  top: 120,
                  left: 200,
                  child: Container(
                    width: 141,
                    height: 119,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Expanded(
                              child: Text(
                                'Clear Chat',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff828282),fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        const  SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const  [
                            Expanded(
                              child: Text(
                                'Block User',
                                textAlign: TextAlign.center,
                                 style: TextStyle(color: Color(0xff828282),fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        const  SizedBox(height: 15),
                       Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to view_profile_page when the text is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewProfile(),
                      ),
                    );
                  },
                  child: const Expanded(
                    child: Text(
                      'View Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff828282), fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
                      ],
                    ),
                  ),
                ),
              Positioned(
                bottom: 15,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 41,
                        margin:const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xffF4F7FC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                            child: Text(
                              'Type message',
                              style: TextStyle(color: Color(0xFFA0A0A0),fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        // Handle image tap here
                      },
                      child: Container(
                        width: 41,
                        height: 41,
                        decoration: BoxDecoration(
                          color: Color(0xff2B5BBA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:const Center(
                          child: Icon(
                            Icons.send,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
