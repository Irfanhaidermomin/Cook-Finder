import 'package:flutter/material.dart';

AppBar appBarTitle() => AppBar(
      elevation: 1,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Cook',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
            TextSpan(
              text: 'finder',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0XFFd68660),
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications_outlined, size: 30),
              onPressed: () {},
            ),
            Positioned(
              right: 9,
              top: 10,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFd68660),
                ),
              ),
            ),
          ],
        ),
      ],
    );

Padding seeAllBtn({required BuildContext context, screen}) => Padding(
      padding: EdgeInsets.only(left: 34, top: 20),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => screen,
          ),
        ),
        child: Row(
          children: [
            Text(
              'See all  ',
              style: TextStyle(
                color: Color(0xFFf29d77),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0xFFf29d77),
              size: 30,
            )
          ],
        ),
      ),
    );
