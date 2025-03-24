import '../../data/model/request/service_add_model.dart';

abstract class ServiceDomainRepository {
  Future<void> addDomainService(AddServiceModel addServiceModel);
}
