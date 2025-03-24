import 'package:my_portfolio/src/features/dashboard/data/model/request/dashboard_data_model.dart';
import 'package:my_portfolio/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';

import '../../../../config/export/export.dart';
import '../widget/read_more.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ResponsiveLayout(
      /// Mobile View
      mobileBody: StreamBuilder<List<DashboardResponseModel>>(
        stream: context.read<DashboardBloc>().dashboardUseCase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: AppColor.black),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No data available"));
          } else {
            final dashboardDataList = snapshot.data!;
            return SafeArea(
              child: Scaffold(
                backgroundColor: AppColor.black,
                appBar: AppBar(
                  backgroundColor: AppColor.white,
                  title: CustomTextWidget(
                    value: AppString.dashboard,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: AppColor.black,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Badge(
                        isLabelVisible: true,
                        label: Text("${dashboardDataList.length}"),
                        offset: const Offset(8, -8),
                        backgroundColor: AppColor.black,
                        child: const Icon(
                          Icons.notifications_active_rounded,
                          size: 18,
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
                // drawer: const CustomDrawer(),
                body: SizedBox(
                  width: screenWidth,
                  height: screenHeight,
                  child: Container(
                    color: AppColor.black,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 10.0,
                      children: [
                        SizedBox(height: 10.0),
                        Center(
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              Card(
                                elevation: 5.0,
                                color: AppColor.white,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                margin: EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 8.0,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 20.0,
                                    children: [
                                      CustomTextWidget(
                                        value: "Total Projects",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: AppColor.black,
                                      ),
                                      CustomTextWidget(
                                        value:
                                            dashboardDataList.length.toString(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: AppColor.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5.0,
                                color: AppColor.white,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                margin: EdgeInsets.all(10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 8.0,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 20.0,
                                    children: [
                                      CustomTextWidget(
                                        value: "Running Projects",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: AppColor.black,
                                      ),
                                      CustomTextWidget(
                                        value: "2",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: AppColor.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        CustomTextWidget(
                          value: "New Requirement",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: AppColor.white,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: dashboardDataList.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: AppColor.white,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 15.0,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        spacing: 10.0,
                                        children: [
                                          CustomTextWidget(
                                            value:
                                                dashboardDataList[index]
                                                    .fullName,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: AppColor.black,
                                          ),

                                          Spacer(),
                                          CustomTextWidget(
                                            value: "Pending",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: AppColor.black,
                                          ),
                                        ],
                                      ),
                                      ReadMoreText(
                                        text:
                                            dashboardDataList[index].query
                                                .toString(),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            padding: EdgeInsets.all(10.0),
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),

      /// DeskTop View
      desktopBody: Container(),
    );
  }
}
