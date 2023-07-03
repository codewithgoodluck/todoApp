import 'package:flutter/material.dart';
import '../models/appBanner.dart';

class BannerItem extends StatelessWidget {
  final AppBanner appBanner;
  const BannerItem({
    Key? key, required this.appBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(appBanner.thumbnailUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(0, 0, 0, 3),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              // Center(
              //   child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text('Text'.toUpperCase()),
              //         Container(
              //           width: 200,
              //           child: Text(
              //             appBanner.title.toUpperCase(),
              //             textAlign: TextAlign.center,
              //           ),
              //         )
              //       ]),
              // )
            ],
          ),
        ));
  }
}
