import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';

class TrendingGridWidget extends StatelessWidget {
  const TrendingGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 280),
        itemBuilder: (context, index) {
          return Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/TLD6iCOlyb0.png',
                  )),
              Constants.spaceWidth5,
              const Column(
                children: [Text('Mithas Bhandar',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),), Text('Sweets, North Indian'), Text('(store location)  |  6.4 kms'), Row(
                  children: [
                    Icon(Icons.star,size: 15,),
                    Constants.spaceWidth5,
                    Text('4.1  |  45 mins'),
                  ],
                )],
              )
            ],
          );
        },
      ),
    );
  }
}
