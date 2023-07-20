import 'package:flutter/material.dart';
import 'package:chats/another_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 3;
  static const Color unselectedIconColor = Colors.black;
  static const Color selectedIconColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.15,
                color: const Color(0xff2B5BBA),
                child: const Padding(
                  padding: EdgeInsets.only(left: 23, top: 52),
                  child: Text(
                    'CHATS',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'images/face.png',
                              width: 64,
                              height: 64,
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'John Doe ',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff433D3D),
                                        ),
                                      ),
                                      SizedBox(width: 50,),
                                      Text(
                                        'Today 11:00 am ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff2B5BBA),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'hey, how are you, I was wondering if you if you c....',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff9C9D9E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AnotherPage(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/home.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'images/home.png',
              width: 24,
              height: 24,
              color: selectedIconColor,
            ),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/savings.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'images/savings.png',
              width: 24,
              height: 24,
              color: selectedIconColor,
            ),
            label: 'Savings',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/loan.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'images/loan.png',
              width: 24,
              height: 24,
              color: selectedIconColor,
            ),
            label: 'Loans',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/chat.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'images/chat.png',
              width: 24,
              height: 24,
              color: selectedIconColor,
            ),
            label: 'Chats',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/account.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'images/account.png',
              width: 24,
              height: 24,
              color: selectedIconColor,
            ),
            label: 'Account',
            backgroundColor: Colors.pink,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
  
  another_page() {}
}
