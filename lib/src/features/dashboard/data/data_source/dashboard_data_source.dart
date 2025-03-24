import '../model/request/dashboard_data_model.dart';

abstract class DashboardDataSource {
  Stream<List<DashboardResponseModel>> getDashboardData();
}
