import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';

import '../../data/repository/dashboard_data_repository.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
class DashboardUseCase {
  DashboardDataRepository daanDataRepository;
  DashboardUseCase({required this.daanDataRepository});
  Stream<List<DashboardResponseModel>> call() {
    return daanDataRepository.getDaanDataRepository();
  }
}
