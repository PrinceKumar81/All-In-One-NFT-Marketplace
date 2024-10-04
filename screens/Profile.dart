import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft/widgets/profile_Card.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Edit Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
              ),
             Container(
               height: 80,
               width: 80,
               child: Icon(Icons.camera_alt),
               decoration: BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.circular(35)
               ),
             ),
             SizedBox(height: 20,),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(2),
                 color: Colors.white
               ),
               child: ProfileCard(
                   title: 'Prince',
                   icon: CupertinoIcons.profile_circled,
                   icon2: Icons.arrow_forward_ios_rounded),
             ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white
                ),
                child: ProfileCard(
                    title: 'Email',
                    icon: Icons.email,
                    icon2: Icons.arrow_forward_ios_rounded),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white
                ),
                child: ProfileCard(
                    title: 'Setting',
                    icon: CupertinoIcons.settings,
                    icon2: Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
