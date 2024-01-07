import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/Custom_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: 4, // Set the total number of pages
            itemBuilder: (context, index) {
              // Your pages go here
              return Container(color: getColorForIndex(index));
            },
          ),
          Container(
            color: getColorForIndex(currentIndex),
            child: Center(
              child: Text(
                "Page ${currentIndex + 1}",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: WormEffect(), // Choose the effect you prefer
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(16),
              gap: 8,
              tabs: [
                const GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: "Likes",
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomView()));
                    });
                  },
                ),
                const GButton(
                  icon: Icons.search,
                  text: "Search",
                ),
                const GButton(
                  icon: Icons.settings,
                  text: "Settings",
                ),
              ],
              selectedIndex: currentIndex,
              onTabChange: (index) {
                _controller.jumpToPage(index);
              }),
        ),
      ),
    );
  }

  Color getColorForIndex(int index) {
    switch (index) {
      case 0:
        return Colors.blue;
      case 1:
        return Colors.green;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.purple;
      default:
        return Colors.blue;
    }
  }
}
