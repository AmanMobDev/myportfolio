import '../../data/model/request/service_add_model.dart';
import '../repository/service_domain_repository.dart';

class GetServiceUseCase {
  final ServiceDomainRepository serviceDomainRepository;
  GetServiceUseCase({required this.serviceDomainRepository});
  Future<void> addDomainService(AddServiceModel addServiceModel) async {
    serviceDomainRepository.addDomainService(addServiceModel);
  }
}
