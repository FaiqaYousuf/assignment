import 'package:assignment/home.dart';
import 'package:assignment/main.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class SliderCarousel extends StatefulWidget {
  @override
  _SliderCarouselState createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<CarouselItem> _carouselItems = [
    const CarouselItem(
      backgroundColor: Color(0xff2A4BA0),
      heading: 'ClickCart-Shop in a Click, Cart Full of Joy! ',
      paragraph:
          'Click Cart: Elevate Your Style, One Swipe at a Time. Dive into the world of fashion with our curated collection of trendy apparel and accessories.',
      
    ),
    const CarouselItem(
      backgroundColor: Color(0xff2A4BA0),
      heading: 'Shop the World with a Click!',
      paragraph: 'Click Cart: Elevate Your Style, One Swipe at a Time. Dive into the world of fashion with our curated collection of trendy apparel and accessories. ',
  
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity, // Make it full-screen height
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _carouselItems.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return _carouselItems[index];
              },
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildImageIndicators(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildImageIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < _carouselItems.length; i++) {
      indicators.add(
        Container(
          width: 50.0, // Indicator size
          height: 3.0, // Indicator size
          margin: const EdgeInsets.symmetric(horizontal: 4.0), // Indicator margin
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            shape: BoxShape.rectangle,
            color: _currentPage == i ? Colors.white : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}

class CarouselItem extends StatelessWidget {
  final Color backgroundColor;
  final String heading;
  final String paragraph;


  const CarouselItem({
    required this.backgroundColor,
    required this.heading,
    required this.paragraph,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 70.0,
              right: 30.0,
              left: 30.0,
            ), // Adjust the margin as needed
            child: Text(
              heading,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 20.0,
              right: 30.0,
              left: 30.0,
            ), // Adjust the margin as needed
            child: Text(
              paragraph,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w100,
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assests/images/ehero.png'), 
                fit: BoxFit.cover, 
              ),
            ),
            margin: const EdgeInsets.only(
              top: 50.0,
              right: 75.0,
              left: 75.0,
            ), // Adjust the margin as needed
          ),
          // Add ElevatedButton here
          
Container(
  margin: const EdgeInsets.only(top:70,left:70,right:30), // Add margin to the button
  child: ElevatedButton(
    onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  HomeView()),
  );},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Button background color
      foregroundColor: const Color(0xff2A4BA0), // Text color
      elevation: 8, // Elevation (shadow)
      minimumSize: const Size(260, 70), // Button size (width, height)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Button border radius
      ),
      textStyle: const TextStyle(
        fontSize: 14, // Text font size
        fontWeight: FontWeight.normal, // Text font weight
      ),
    ),
    child: const Padding(
      padding: EdgeInsets.all(15), // Add padding around the content
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Get Started'),
          SizedBox(width: 10), // Add spacing between text and icon
          Icon(Icons.arrow_forward_rounded), // Replace with your desired icon
        ],
      ),
    ),
  ),
)


          
        ],
      ),
    );
  }
}



