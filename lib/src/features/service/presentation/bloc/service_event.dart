import 'package:equatable/equatable.dart';

abstract class AddServiceEvents extends Equatable {
  const AddServiceEvents();
  @override
  List<Object> get props => [];
}

class GetAddServiceEvent extends AddServiceEvents {}

class AddServiceEvent extends AddServiceEvents {
  final String? fullName;
  final String? email;
  final String? mobile;
  final String? query;

  const AddServiceEvent({
    this.fullName,
    this.email,
    this.mobile,
    this.query,
  });

  @override
  List<Object> get props => [fullName!, email!, mobile!, query!];
}
