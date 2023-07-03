import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Minibar2 extends StatefulWidget {
  const Minibar2 ({ super.key });

  @override
  State<Minibar2 > createState() => _Minibar2State();
}

class _Minibar2State extends State<Minibar2 > {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,
    shrinkWrap: true,
    children: [
      CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(0),
             width:100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage("https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/89/762414/1.jpg?2533"),
                  fit: BoxFit.fill,
                  
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
             width:100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/36/009817/1.jpg?8357"),
                 fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
             width:100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/77/745887/1.jpg?1158"),
                fit: BoxFit.fill,
              ),
            ),
          ),
             Container(
            margin: EdgeInsets.all(0),
             width:100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/36/009817/1.jpg?8357"),
                 fit: BoxFit.fill,
              ),
            ),
          ),
          

        ], 
        options: CarouselOptions(
            height: 80.0,
           
            enlargeCenterPage: true,
            autoPlay: true,
            // aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            // viewportFraction: 0.8,
          ),
        ),
    ]);
    
  }
}




