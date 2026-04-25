import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/data/home_view.dart';
import 'package:flutter_application_1/Features/profile/view/profile_view.dart';
import 'package:flutter_application_1/Features/workout/view/workout_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  List<Widget> pages = [HomeView(), WorkoutView(), ProfileView()];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });

    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: "Workout",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
