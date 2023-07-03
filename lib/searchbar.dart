import 'package:flutter/material.dart';
import 'package:todo_list/screens/banner_item.dart';
import 'package:todo_list/screens/indicator.dart';

import 'models/appBanner.dart';

class Coursel extends StatefulWidget {
  const Coursel({super.key});

  @override
  State<Coursel> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Coursel> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
            color:Color.fromARGB(228, 228, 228, 228),
            borderRadius: BorderRadius.circular(10)
        ),
        child: PageView.builder(
          onPageChanged: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          controller: PageController(viewportFraction: 0.7),
          itemCount: appBannerList.length,
          itemBuilder: (context, index) {
            return BannerItem(appBanner:appBannerList[index]);
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ...List.generate(appBannerList.length, (index) => Indicator(
           isActive: _selectedIndex == index ? true : false,
        ))
      ],)
    ]);
  }
}


