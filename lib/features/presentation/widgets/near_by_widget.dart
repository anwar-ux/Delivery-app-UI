import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';

class NearByWidgetBuilder extends StatelessWidget {
  const NearByWidgetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const NearByStoresWidget();
          },
          separatorBuilder: (context, index) => Constants.spaceHight20,
          itemCount: 2),
    );
  }
}

class NearByStoresWidget extends StatelessWidget {
  const NearByStoresWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/lastphoto.png',
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          Constants.spaceWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Freshly Baker', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Constants.spaceHight5,
                      Text('Sweets, North Indian'),
                      Text('Site No - 1  |  6.4 kms'),
                    ],
                  ),
                  Constants.spaceWidth20,
                  Constants.spaceWidth20,
                  Constants.spaceWidth20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                          ),
                          Constants.spaceWidth5,
                          Text(
                            '4.1',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          )
                        ],
                      ),
                      Text(
                        '45 mins',
                        style: TextStyle(fontSize: 16, color: Colors.deepOrange,fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Constants.spaceHight10,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade300,
                ),
                width: 50,
                height: 20,
                child: const Center(
                    child: Text(
                  'Top Store',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                )),
              ),
              Constants.spaceHight10,
              Container(
                color: Colors.grey.shade400,
                width: 270,
                height: 1,
              ),
              Constants.spaceHight10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/%.png'),
                  Constants.spaceWidth5,
                  const Text(
                    'Upto 10% OFF',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Constants.spaceWidth5,
                  Image.asset('assets/box.png'),
                  Constants.spaceWidth5,
                  const Text(
                    '3400+ items available',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
