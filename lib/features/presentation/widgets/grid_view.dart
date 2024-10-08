import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});
  List<String> images = [
    'assets/first.png',
    'assets/Second.png',
    'assets/third.png',
    'assets/fourth.png',
    'assets/fifth.png',
    'assets/sixth.png',
    'assets/seventh.png',
    'assets/eighth.png'
  ];
  List<String> names = ['Food Delivery', 'Medicines', 'Pet\nSupplies', 'Gifts', 'Meat', 'Cosmetic', 'Stationery', 'Stores'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        physics:const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisExtent: 120, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(images[index]),
              Text(
                names[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.5),
              )
            ],
          );
        },
      ),
    );
  }
}
