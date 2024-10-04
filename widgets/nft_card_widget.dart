
import 'package:flutter/material.dart';
import 'package:nft/config/constants.dart';
import 'package:nft/widgets/glassmorphism.dart';

class NFTCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int favoriteNumber;
  final int CommentNumber;
  final VoidCallback onPress;

  const NFTCardWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
    required this.CommentNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      blur: 20,
      opacity: 0.1,
      radius: 20.0,
      child: SizedBox(
        width: 170.0,
        child: Column(
          children: [
            Container(
              height: 150 * 0.8,
              width: 150.0,
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.comment_bank_outlined,color: Colors.white,size: 18,),
                     SizedBox(width: 5,),
                     Text('$CommentNumber',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                     ),
                     SizedBox(width: 50,),
                     const Icon(
                       Icons.favorite,
                       color: Colors.red,
                       size: 12.0,
                     ),
                     const SizedBox(
                       width: 5.0,
                     ),
                     Text(
                       '$favoriteNumber',
                       style: TextStyle(
                         color: Colors.white.withOpacity(0.8),
                         fontSize: 12.0,
                       ),
                     ),
                   ],
                 ),

                  
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}