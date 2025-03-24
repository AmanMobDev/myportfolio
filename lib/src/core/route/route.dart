import '../../config/export/export.dart';

/*******************************************************************************
 *Created By Aman Mishra
 * This file is used for define all route.
 ******************************************************************************/

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.certificateScreen:
        return MaterialPageRoute(
          builder: (context) => const CertificateScreen(),
        );

      case RouteName.projectScreen:
        return MaterialPageRoute(builder: (context) => const ProjectScreen());
      case RouteName.serviceScreen:
        return MaterialPageRoute(builder: (context) => const ServiceScreen());

      case RouteName.dashboardScreen:
        return MaterialPageRoute(builder: (context) => const DashboardScreen());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(child: TextWidget(value: AppString.noRoute)),
            );
          },
        );
    }
  }
}
