import '../../../../config/export/export.dart';
import '../model/request/dashboard_data_model.dart';
import 'dashboard_data_source.dart';

class DashboardDataSourceImp implements DashboardDataSource {
  final DataBaseCollectionServices dataBaseCollectionServices;
  DashboardDataSourceImp({required this.dataBaseCollectionServices});

  @override
  Stream<List<DashboardResponseModel>> getDashboardData() {
    return dataBaseCollectionServices.readData('query').map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return DashboardResponseModel.fromMap(data);
      }).toList();
    });
  }
}
