import '../../../domain/entity/service_entity.dart';

class AddServiceModel extends ServiceEntity {
  AddServiceModel(
      {required super.fullName,
      required super.email,
      required super.mobile,
      required super.query});

  factory AddServiceModel.fromMap(Map<String, dynamic> map) {
    return AddServiceModel(
        fullName: map['fullName'],
        email: map['email'],
        mobile: map['mobile'],
        query: map['query']);
  }

  Map<String, dynamic> toMap() {
    return {
      'full_name': fullName,
      'email': email,
      'mobile': mobile,
      'query_details': query
    };
  }
}
