import 'package:my_portfolio/src/features/service/data/model/request/service_add_model.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
abstract class ServiceDataSource {
  Future<void> addService(AddServiceModel addServiceModel);
}
