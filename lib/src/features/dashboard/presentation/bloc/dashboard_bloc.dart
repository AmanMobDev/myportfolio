import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';
import 'package:my_portfolio/src/features/dashboard/domain/use_case/dashboard_use_case.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_states.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardStates> {
  final DashboardUseCase dashboardUseCase;

  StreamSubscription<List<DashboardResponseModel>>? _subscription;
  DashboardBloc({required this.dashboardUseCase})
    : super(DashboardInitialState()) {
    on<GetDashboardEvent>((event, emit) async {
      emit(DashboardLoadingState());

      await _subscription?.cancel();

      try {
        _subscription = dashboardUseCase().listen(
          (daanData) {
            if (!emit.isDone) {
              emit(DashboardDataLoadedState(dashboardResponseModel: daanData));
            }
          },
          onError: (error) {
            if (!emit.isDone) {
              emit(DashboardErrorState(message: error.toString()));
            }
          },
        );
      } catch (e) {
        if (!emit.isDone) {
          emit(DashboardErrorState(message: e.toString()));
        }
      }
    });
  }
  @override
  Future<void> close() {
    _subscription?.cancel(); // Cancel the subscription to avoid memory leaks
    return super.close();
  }
}
