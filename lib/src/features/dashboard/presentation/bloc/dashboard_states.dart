import 'package:equatable/equatable.dart';
import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';

abstract class DashboardStates extends Equatable {
  const DashboardStates();
  @override
  List<Object?> get props => [];
}

class DashboardInitialState extends DashboardStates {
  const DashboardInitialState();
}

class DashboardLoadingState extends DashboardStates {
  const DashboardLoadingState();
}

class DashboardDataLoadedState extends DashboardStates {
  final List<DashboardResponseModel> dashboardResponseModel;

  DashboardDataLoadedState({required this.dashboardResponseModel});

  @override
  List<Object?> get props => [DashboardResponseModel];
}

class DashboardErrorState extends DashboardStates {
  final String message;
  const DashboardErrorState({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
