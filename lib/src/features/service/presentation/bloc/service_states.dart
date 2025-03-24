import 'package:equatable/equatable.dart';
import 'package:my_portfolio/src/features/service/data/model/request/service_add_model.dart';

abstract class AddServiceStates extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddServiceInitialState extends AddServiceStates {}

class AddServiceLoadingState extends AddServiceStates {}

class AddServiceLoadedState extends AddServiceStates {
  final AddServiceModel addServiceModels;

  AddServiceLoadedState({required this.addServiceModels});

  @override
  List<Object?> get props => [addServiceModels];
}

class AddServiceErrorState extends AddServiceStates {
  final String message;
  AddServiceErrorState({required this.message});
}
