import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  projectCard(String language, String title, String description, star) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 290,
      child: Card(
        color: Colors.grey[800],
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projectCard(
                  'Python',
                  'Breast Cancer Detection',
                  'By using AI techniques we make diagnosis for the records and see is she in good case or the bad case',
                  '10'),
              projectCard(
                  'Python',
                  'Auto Correct Paragraph',
                  'Make auto correction on the paragraph on typing some of text',
                  '10'),
              projectCard('Flutter', 'Tic Tac Toe Game App',
                  'Play Tic Tac Toe with your friend or with a Bot', '9'),
              projectCard('Flutter', 'Birthday App', 'celebrate', '9'),
              projectCard('Front End Web', 'Tour Management System',
                  'Choosing the place you want to travel', '9'),
              projectCard('Java & MYSQL', 'Order and Delivery System',
                  'Restaurant and delivery services.', '10'),
              projectCard('C++', 'Space Shooter', 'Single Player', '8'),
              projectCard('FLUTTER', 'E-Commerce App',
                  'You can buy and sell products as you like', '10'),
              projectCard(
                  'Java',
                  'Currency Convertor',
                  'You can convert from currency to another currency by some calculation',
                  '7'),
              projectCard(
                  'Java',
                  'Content Management System',
                  'this system is going to save the data and the name of user and his account using double linked list',
                  '9'),
              projectCard(
                  'Flutter',
                  'Fruit Color App ',
                  'Simple game for Matching the fruit with the correct color',
                  '8'),
              projectCard(
                  'Flutter',
                  'Online Course App',
                  'Attending the course you want it in mobile application and able to download videos of lectures for atching later in offline mode',
                  '10'),
              projectCard(
                  'Flutter',
                  'BMI App',
                  'Using for check about the body depend on height and weight and then print the BMI and tell if you obese or thin',
                  '10'),
              projectCard(
                  'Flutter',
                  'Remote Tesla Car',
                  'You able to control on car instead for using key using the phone ',
                  '10'),
              projectCard(
                  'Flutter',
                  'Pomodoro App',
                  'Using in set time for studying or completely some tasks ',
                  '8'),
              projectCard(
                  'Flutter',
                  'Movie App',
                  'See the films that be uploaded in cinema and watch them (Still working on it)',
                  '7'),
              projectCard(
                  'Flutter',
                  'Spotify UI',
                  'you can play music and hear any songs you need it without being necessary to downloading it',
                  '9'),
              projectCard(
                  'Java',
                  'Calculator',
                  'Using Calculator with more features than ordinary calculator in any computer',
                  '10'),
              projectCard(
                  'Flutter',
                  'Meal App Project',
                  'This app for Selecting the meal that you want it and it will be cooked in house and delivery it to your location what ever you need healthy food or fries food and soon on we are leave more feature such as making filtering on choosing the favorite meal that you want it',
                  '10'),
            ],
          ),
        ),
      ),
    );
  }
}
