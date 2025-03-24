import 'package:my_portfolio/src/config/export/export.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

class GetServiceDataSource implements ServiceDataSource {
  DataBaseCollectionServices dataBaseCollectionServices;

  GetServiceDataSource({required this.dataBaseCollectionServices});

  @override
  Future addService(AddServiceModel addServiceModel) async {
    Map<String, dynamic> data = addServiceModel.toMap();
    debugPrint("GetServiceDataSource: ${data.toString()}");

    dataBaseCollectionServices
        .addData('query', data)
        .then(
          (value) {
            Utils.toastMessages(message: "Query Added Successfully");
          },
          onError: (error) {
            debugPrint("GetServiceDataSource onError: ${error.toString()}");
            Utils.toastMessages(message: error.toString());
          },
        );
  }
}
