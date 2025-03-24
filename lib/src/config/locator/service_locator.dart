import 'package:my_portfolio/src/config/export/export.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';

import '../../features/dashboard/data/data_source/dashboard_data_source_imp.dart';
import '../../features/dashboard/data/repository/dashboard_data_repository.dart';
import '../../features/dashboard/domain/use_case/dashboard_use_case.dart';

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

  // Register DashboardDataSource
  locator.registerSingleton<DashboardDataSourceImp>(
    DashboardDataSourceImp(
      dataBaseCollectionServices: locator<DataBaseCollectionServices>(),
    ),
  );

  // Register DashboardRepository
  locator.registerSingleton<DashboardDataRepository>(
    DashboardDataRepository(
      dashboardDataSource: locator<DashboardDataSourceImp>(),
    ),
  );

  // Register DashboardDataUseCase
  locator.registerSingleton<DashboardUseCase>(
    DashboardUseCase(daanDataRepository: locator<DashboardDataRepository>()),
  );

  // Register DashboardBloc
  locator.registerFactory<DashboardBloc>(
    () => DashboardBloc(dashboardUseCase: locator<DashboardUseCase>()),
  );
}
