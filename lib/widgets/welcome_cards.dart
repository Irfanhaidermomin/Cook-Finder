import 'package:flutter/material.dart';
import 'package:cookfinder/widgets/dots_indicator_widget.dart';

class WelcomeCards extends StatefulWidget {
  WelcomeCards({Key? key, required this.size}) : super(key: key);

  final size;

  @override
  _WelcomeCardsState createState() => _WelcomeCardsState();
}

class _WelcomeCardsState extends State<WelcomeCards> {
  int _currentBanner = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: widget.size.height * 0.03,
        left: widget.size.width * 0.06,
        right: widget.size.width * 0.06,
      ),
      height: widget.size.height * 0.6,
      child: Stack(
        children: [
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              welcomeBanner(
                title: 'Welcome 👋',
                description: 'Here you can find a chef or dish for every taste and color. Enjoy!',
                image: 'chef.png',
              ),
              welcomeBanner(
                title: '1111 👋',
                description: 'Here you can find a chef or dish for every taste and color. Enjoy!',
                image: 'chef.png',
              ),
              welcomeBanner(
                title: '2222 👋',
                description: 'Here you can find a chef or dish for every taste and color. Enjoy!',
                image: 'chef.png',
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.black26, size: 30),
              onPressed: () {
                print('111111');
              },
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: DotsIndicatorWidget(
              cant: 3,
              duration: Duration(milliseconds: 300),
              disableDotColor: Colors.black12,
              sizeDotActive: Size(12.0, 8.0),
              sizeDot: Size(8.0, 8.0),
              position: _currentBanner,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[400],
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              onTap: () {
                setState(() {
                  _currentBanner++;
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 10),
                    curve: Curves.linear,
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Container welcomeBanner({required String image, required String title, required String description}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFDF1D6),
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: EdgeInsets.only(top: 30, left: 22, right: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/images/$image'),
          ),
        ],
      ),
    );
  }
}
