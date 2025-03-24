import 'package:my_portfolio/src/features/service/data/model/request/service_add_model.dart';
import 'package:my_portfolio/src/features/service/domain/repository/service_domain_repository.dart';

import '../data_source/service_data_source.dart';

class ServiceDataRepository implements ServiceDomainRepository {
  final ServiceDataSource serviceDataSource;

  ServiceDataRepository({required this.serviceDataSource});

  @override
  Future<void> addDomainService(AddServiceModel addServiceModel) async {
    serviceDataSource.addService(addServiceModel);
  }
}
