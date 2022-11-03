import 'package:delivery_rider/Screens/Rider_screen.dart';
import 'package:delivery_rider/Screens/User_profile.dart';
import 'package:flutter/material.dart';

import 'Search_screen.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = <Widget>[
   const HomeScreen (),
    const Search_screen (),
    const Rider_screen (),
    const UserProfile (),


  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,

        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: 'Home',//backgroundColor: Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon:   Icon(Icons.search,color: Colors.black,),
            label: 'Search',//backgroundColor: Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.bike_scooter,color: Colors.black,),
            label: 'Favorite',//backgroundColor: Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person_outline,color: Colors.black,),
            label: 'Profile',//backgroundColor: Color(0xffffffff),
          ),

        ],
      ),

      body: _pages[_selectedIndex],
    );
  }
}