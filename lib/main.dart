import 'package:flutter/material.dart';
import 'profile.dart';

void main()=> runApp(new ProfileScreen());

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile Screen Challenge",
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
