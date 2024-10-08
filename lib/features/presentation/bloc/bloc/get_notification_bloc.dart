import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app_ui/features/data/datasource/api_service.dart';
import 'package:food_delivery_app_ui/features/data/models/model.dart';
part 'get_notification_event.dart';
part 'get_notification_state.dart';

class GetNotificationBloc extends Bloc<GetNotificationEvent, GetNotificationState> {
  GetNotificationBloc() : super(GetNotificationInitial()) {
    on<FetchNotificationData>(_onFetchNotification);
  }
  void _onFetchNotification(FetchNotificationData event, Emitter<GetNotificationState> emit) async {
    try {
      emit(GetNotificationLoading());
      
      final data = await ApiService.getNotification();
      if (data.isNotEmpty) {
        emit(GetNotificationLoaded(data));
      }
    } catch (e) {
      emit(GetNotificationFailed());
    }
  }
}
