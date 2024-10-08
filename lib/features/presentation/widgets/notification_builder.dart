import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';
import 'package:food_delivery_app_ui/features/presentation/bloc/bloc/get_notification_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationBuilder extends StatelessWidget {
  const NotificationBuilder({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNotificationBloc()..add(FetchNotificationData()),
      child: BlocConsumer<GetNotificationBloc, GetNotificationState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GetNotificationLoading) {
            const Center(child: CircularProgressIndicator());
          } else if (state is GetNotificationLoaded) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final data = state.data[index];
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Image.asset(
                        images[index],
                        height: 50,
                      ),
                      Constants.spaceWidth10,
                      Expanded(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(data.title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                        Constants.spaceHight5,
                        Text(data.subtitle, overflow: TextOverflow.ellipsis, maxLines: 2, style: const TextStyle(fontSize: 15)),
                        Constants.spaceHight5,
                        Text(timeago.format(DateTime.parse(data.time)), style: const TextStyle(fontSize: 14))
                      ]))
                    ]),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: images.length);
          } else if (state is GetNotificationFailed) {
            return const Center(child: Text('Failed'));
          }
          return Center(
            child: CircularProgressIndicator(color: AppColors.iconsGreen, strokeWidth: 5),
          );
        },
      ),
    );
  }
}
