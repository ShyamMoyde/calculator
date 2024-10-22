import 'package:calculator/component/Colorcode.dart';
import 'package:flutter/material.dart';

class Mybtn extends StatelessWidget {
   final String title;
   final Color mycolor;
   final VoidCallback onPress;
  const Mybtn({super.key, required this.title,
    this.mycolor = const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return
       Expanded(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: InkWell(
             borderRadius: BorderRadius.circular(50.0),
             onTap: onPress,
             child: Container(
               width: 80,
               height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: mycolor,

              ),
               child: Center(child: Text(title  , style: TextStyle(color: whiteColor , fontSize: 20,), )),
                   ),
           ),
         ),
       );

  }
}
