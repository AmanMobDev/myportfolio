import 'package:my_portfolio/src/features/dashboard/domain/entity/dashboard_entity.dart';

class DashboardResponseModel extends DashboardEntity {
  DashboardResponseModel({
    required super.fullName,
    required super.email,
    required super.mobile,
    required super.query,
  });

  factory DashboardResponseModel.fromMap(Map<String, dynamic> map) {
    return DashboardResponseModel(
      fullName: map['full_name'],
      email: map['email'],
      mobile: map['mobile'],
      query: map['query_details'],
    );
  }
}
