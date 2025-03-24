import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/src/features/service/presentation/bloc/service_event.dart';
import 'package:my_portfolio/src/features/service/presentation/bloc/service_states.dart';

import '../../data/model/request/service_add_model.dart';
import '../../domain/usecase/service_use_case.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

class ServiceBloc extends Bloc<AddServiceEvents, AddServiceStates> {
  final GetServiceUseCase getServiceUseCase;

  ServiceBloc({required this.getServiceUseCase})
    : super(AddServiceInitialState()) {
    on<GetAddServiceEvent>((event, emit) {});

    on<AddServiceEvent>((event, emit) async {
      emit(AddServiceLoadingState());

      try {
        final addServiceModel = AddServiceModel(
          fullName: event.fullName,
          email: event.email,
          mobile: event.mobile,
          query: event.query,
        );

        debugPrint("ServiceBloc ${addServiceModel.toMap().toString()}");

        await getServiceUseCase.addDomainService(addServiceModel);

        emit(AddServiceLoadedState(addServiceModels: addServiceModel));
      } catch (e) {
        if (!emit.isDone) {
          emit(AddServiceErrorState(message: e.toString()));
        }
      }
    });
  }
}
