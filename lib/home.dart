import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile_project/about.dart';
import 'package:my_profile_project/project.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Widget myAchiev(String num, String type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              type,
              style: TextStyle(
                fontSize: 17,
              ),
            )),
      ],
    );
  }

//in case you need to add only one specialized
  Widget mySpec(IconData icon, String label) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }

//in case you need to add more than on specialized
  Widget rowSpec(IconData iconData1, String label1, IconData iconData2,
      String label2, IconData iconData3, String label3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            mySpec(iconData1, label1),
            SizedBox(
              width: 10,
            ),
            mySpec(iconData2, label2),
            SizedBox(
              width: 10,
            ),
            mySpec(iconData3, label3),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              
              child: TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Project(),)),
                child: Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => About(),)),
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/me-removebg-preview.png'),
          )),
        )),
        builder: (context, state) => Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30),
          height: 500,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('50', 'Projects'),
                    myAchiev('417', 'Followers'),
                    myAchiev('10', 'Hobbies'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    rowSpec(
                        FontAwesomeIcons.android,
                        'Android',
                        FontAwesomeIcons.appStoreIos,
                        'IOS',
                        FontAwesomeIcons.java,
                        'Java'),
                    rowSpec(
                        FontAwesomeIcons.html5,
                        'HTML5',
                        FontAwesomeIcons.unity,
                        'Unity',
                        FontAwesomeIcons.database,
                        'SQL'),
                    rowSpec(
                        FontAwesomeIcons.python,
                        'Python',
                        FontAwesomeIcons.css3Alt,
                        'CSS3',
                        FontAwesomeIcons.jsSquare,
                        'JavaScript'),
                    rowSpec(
                        Icons.flutter_dash,
                        'Flutter',
                        FontAwesomeIcons.github,
                        'gitHub',
                        FontAwesomeIcons.terminal,
                        'Terminal'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
