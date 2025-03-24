import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';
import 'package:my_portfolio/src/features/dashboard/domain/repository/dashboard_domain_repository.dart';

import '../data_source/dashboard_data_source.dart';

class DashboardDataRepository implements DashboardDomainRepository {
  final DashboardDataSource dashboardDataSource;

  DashboardDataRepository({required this.dashboardDataSource});

  @override
  Stream<List<DashboardResponseModel>> getDaanDataRepository() {
    return dashboardDataSource.getDashboardData();
  }
}
