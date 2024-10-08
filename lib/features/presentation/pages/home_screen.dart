import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/app_bar_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/craze_deal_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/discount_container_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/grid_view.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/more_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/near_by_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/refer_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/trending_grid_widget.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/view_all_stores_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(130), child: AppBarWidget()),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headings('What would you like to do today?'),
              Constants.spaceHight20,

              //Widget showing category grid
              GridViewWidget(),

              const MoreWidget(),
              Constants.spaceHight10,

              headings('Top picks for you'),
              Constants.spaceHight10,

              //Widget showing the discount products
              const DiscountContainerWidget(),
              Constants.spaceHight20,

              headingsWithSuffix('Trending', 'See all'),
              Constants.spaceHight10,

              //Widget showing the trending products
              const TrendingGridWidget(),
              Constants.spaceHight10,

              headings('Craze deals'),
              Constants.spaceHight10,

              //Widget showing the craze deal products
              const CrazeDealWidget(),
              Constants.spaceHight35,

              //Widget showing refer widget
              const ReferWidget(),
              Constants.spaceHight20,

              headingsWithSuffix('Nearby stores', 'See all'),
              Constants.spaceHight10,

              //Widget showing nearby stores
              const NearByWidgetBuilder(),
              Constants.spaceHight20,

              //Widget showing view all stores button
              const ViewAllStoresButton(),
            ],
          ),
        ),
      ),
    );
  }


  Text headings(String head) => Text(head, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold));

  Row headingsWithSuffix(String head, String suffix) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(head, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(suffix, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.appGreen),)
        ],
      );
}

