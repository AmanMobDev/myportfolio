import 'package:my_portfolio/src/config/export/export.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Register AppServices
  locator.registerSingleton<DataBaseCollectionServices>(
    DataBaseCollectionServices(),
  );

  // Register JoinDataSource
  locator.registerSingleton<GetServiceDataSource>(
    GetServiceDataSource(
      dataBaseCollectionServices: locator<DataBaseCollectionServices>(),
    ),
  );

  // Register JoinRepository
  locator.registerSingleton<ServiceDataRepository>(
    ServiceDataRepository(serviceDataSource: locator<GetServiceDataSource>()),
  );

  // Register JoinDataUseCase
  locator.registerSingleton<GetServiceUseCase>(
    GetServiceUseCase(
      serviceDomainRepository: locator<ServiceDataRepository>(),
    ),
  );

  // Register JoinBloc
  locator.registerFactory<ServiceBloc>(
    () => ServiceBloc(getServiceUseCase: locator<GetServiceUseCase>()),
  );
}
