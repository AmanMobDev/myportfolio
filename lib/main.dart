import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:my_portfolio/src/config/export/export.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if (kIsWeb) {
  } else {
    // Initialize Push Notification Service
    PushNotificationService pushNotificationService = PushNotificationService();
    pushNotificationService.setupFCM();
    pushNotificationService.getFCMToken();
    pushNotificationService.listenToMessages();
    // pushNotificationService.getAccessToken();
  }
  await setupLocator();
  WidgetsBinding.instance.addPostFrameCallback((_) {});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServiceBloc>(
          create:
              (context) => locator<ServiceBloc>()..add(GetAddServiceEvent()),
        ),
        BlocProvider<DashboardBloc>(
          create:
              (context) => locator<DashboardBloc>()..add(GetDashboardEvent()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:
            (kIsWeb) ? RouteName.homeScreen : RouteName.dashboardScreen,
        onGenerateRoute: Routes.generateRoutes,
      ),
    );
  }
}
