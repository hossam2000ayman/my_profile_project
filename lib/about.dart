import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    //end              //start
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/me-removebg-preview.png',
                  height: 800,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Hossam Ayman',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Me',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
