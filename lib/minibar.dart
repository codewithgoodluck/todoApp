import 'dart:async';
import 'package:flutter/material.dart';

class Minibar extends StatefulWidget {
  const Minibar({super.key});

  @override
  State<Minibar> createState() => _MinibarState();
}

class _MinibarState extends State<Minibar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
            
      children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration:BoxDecoration(
                color:Color.fromARGB(228, 228, 228, 228),
              borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
               
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mobile_friendly,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mobile",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      // color: Colors.white
                    ),
                  ),
                ],
              ),
            ),

              SizedBox(
              width: 5,
            ), 
            
             Container(
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                color:Color.fromARGB(228, 228, 228, 228),
              borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.mobile_friendly,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mobile",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      // color: Colors.white
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 5,
            ), 
            
            Container(
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                color:Color.fromARGB(228, 228, 228, 228),
              borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.mobile_friendly,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mobile",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      // color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
 SizedBox(
              width: 5,
            ), 
             Container(
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                color:Color.fromARGB(228, 228, 228, 228),
              borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.mobile_friendly,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mobile",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      // color: Colors.white
                    ),
                  ),
                ],
              ),
            )
      ],
    ),
          ],
        ));
  }
}
