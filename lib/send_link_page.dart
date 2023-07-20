import 'package:flutter/material.dart';

void main() {
  runApp(const SendLinkPage());
}

class SendLinkPage extends StatelessWidget {
  const SendLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  // Background Content
                  Container(
                    color: Color(0xff828282),
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 73),
                        Row(
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
                                  child: Center(
                                    child: Icon(
                                      Icons.chevron_left,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'Contacts',
                              style: TextStyle(
                                color: Color(0xff433D3D),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Already on FinHub',
                          style: TextStyle(
                            color: Color(0xff2B5BBA),
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/face.png',
                                      width: 45,
                                      height: 45,
                                    ),
                                    const SizedBox(width: 20.0),
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                        color: Color(0xff433D3D),
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Invite on FinHub',
                          style: TextStyle(
                            color: Color(0xff2B5BBA),
                            fontSize: 25,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/face.png',
                                      width: 45,
                                      height: 45,
                                    ),
                                    const SizedBox(width: 20.0),
                                    Text(
                                      'John Doe',
                                      style: TextStyle(
                                        color: Color(0xff433D3D),
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Centered Container
                  Center(
                    child: Container(
                      width: 322,
                      height: 222,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Send an Invite Link',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff2B5BBA),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'http://dhjdef/finhub/josephine?deGjQ334',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff828282),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 149,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xff2B5BBA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Screen',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 149,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xffDDE2EB),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Color(0xff828282),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
