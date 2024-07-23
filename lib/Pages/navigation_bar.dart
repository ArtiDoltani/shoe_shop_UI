import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Pages/HomeScreen.dart';
import 'package:online_shop/Pages/person_list.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int current_index=0;
  final tabs=[HomeScreen(), PersonList()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[current_index] ,
       // Creating Bottom Navigation
        bottomNavigationBar: CurvedNavigationBar(
index: current_index,
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.orange,
            color: Colors.orange,
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 26,
              ),
            //  Icon(Icons.add, color: Colors.white, size: 26),
             // Icon(Icons.message, color: Colors.white, size: 26),
             Icon(Icons.person, color: Colors.white, size: 26)
            ],
            onTap:(index){
              setState(() {
                current_index=index;
              });

            } ,
            
            ),

    );
  }
}