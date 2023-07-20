import 'package:flutter/material.dart';

void main() {
  runApp(const ViewProfile());
}

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FractionallySizedBox(
                widthFactor: 1.0,
                child: Container(
                  width: 393,
                  height: 260,
                  color: const Color(0xff2B5BBA),
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
                              border: Border.all(color: const Color(0xffFFFFFF)),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.chevron_left,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 150),
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 89),
                        child: Column(
                          children: [
                            Container(
                              width: 86,
                              height: 86,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('images/face.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Josephine',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                         const   Text(
                              'online',
                              style: TextStyle(fontSize: 15, color: Color(0xffE0E0E0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             const SizedBox(height: 20),
              FractionallySizedBox(
                widthFactor: 1.0,
                child: Container(
                  width: 393,
                  height: 251,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffFFFFFFF),
                    border: Border.all(color: Color(0xffEEE8E8)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Image.asset('images/phone.png'),
                          const  SizedBox(width: 15),
                           const Text(
                              'Phone',
                              style: TextStyle(fontSize: 18, color: Color(0xff433D3D)),
                            ),
                           const SizedBox(width: 35),
                           const Text(
                              '077093663',
                              style: TextStyle(color: Color(0xff2B5BBA), fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Image.asset('images/university.png'),
                            const SizedBox(width: 15),
                          const   Text(
                              'University',
                              style: TextStyle(fontSize: 18, color: Color(0xff433D3D)),
                            ),
                          const  SizedBox(width: 35),
                           const Text(
                              'Makerere',
                              style: TextStyle(color: Color(0xff2B5BBA), fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Image.asset('images/collage.png'),
                            const SizedBox(width: 15),
                           const  Text(
                              'Collage',
                              style: TextStyle(fontSize: 18, color: Color(0xff433D3D)),
                            ),
                           const SizedBox(width: 35),
                           const Text(
                              'Cocis',
                              style: TextStyle(color: Color(0xff2B5BBA), fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
