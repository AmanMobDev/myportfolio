import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';

abstract class DashboardDomainRepository {
  Stream<List<DashboardResponseModel>> getDaanDataRepository();
}
