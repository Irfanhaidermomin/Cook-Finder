import 'package:flutter/material.dart';

class Recommeded extends StatelessWidget {
  const Recommeded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        RecommendItem(
          background: Color(0xFFDFF3EE),
          image: 'vegan_meals.png',
          stars: '4,5/5',
          title: 'Vegan Meals',
          price: '25.50',
          textColor: Color(0xFF497E70),
          favorite: true,
        ),
        RecommendItem(
          background: Color(0xFFfff8ee),
          image: 'pasta2.png',
          stars: '4,8/5',
          title: 'Best Pasta',
          price: '45.00',
          textColor: Color(0xFFa78e58),
          favorite: true,
        ),
        RecommendItem(
          background: Color(0xFFf6f6f6),
          image: 'sushi1.png',
          stars: '4,4/5',
          title: 'Best Sushi',
          price: '33.00',
          textColor: Color(0xFF898381),
          favorite: false,
        ),
      ],
    );
  }
}

class RecommendItem extends StatelessWidget {
  const RecommendItem({
    Key? key,
    required this.background,
    required this.image,
    required this.stars,
    required this.title,
    required this.price,
    required this.textColor,
    required this.favorite,
  }) : super(key: key);

  final Color background;
  final String image;
  final String stars;
  final String title;
  final String price;
  final Color textColor;
  final bool favorite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            SizedBox(height: 110),
            Container(
              height: 230,
              width: 250,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: background,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.star,
                            color: textColor,
                            size: 22,
                          ),
                        ),
                        TextSpan(
                          text: stars,
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                      ]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 28,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$$price',
                          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            //favorite = !favorite;
                          },
                          child: Icon(
                            favorite ? Icons.favorite : Icons.favorite_outline,
                            size: 34,
                            color: favorite ? Colors.black87 : Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 220,
          height: 220,
          child: Image(
            image: AssetImage('assets/images/recommended/$image'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
