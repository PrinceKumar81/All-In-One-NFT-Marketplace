import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData icon2;
  const ProfileCard({super.key,required this.title,required this.icon,required this.icon2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white
        ),
        child: Icon(icon),
      ),
      title: Text(title,style: TextStyle(color: Colors.black),),
      trailing: Container(
        width: 30,
        height: 30,
        child: Icon(icon2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white
        ),
      ),
    );
  }
}
