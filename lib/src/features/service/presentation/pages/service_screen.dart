import '../../../../config/export/export.dart';
import '../widget/show_query_box.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ResponsiveLayout(
      /// Mobile View
      mobileBody: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.black,
          appBar: AppBar(
            backgroundColor: AppColor.white,
            title: CustomTextWidget(
              value: AppString.resume,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: AppColor.black,
            ),
          ),
          drawer: const CustomDrawer(),
          floatingActionButton: FloatingActionButton(
            elevation: 5.0,
            onPressed: () {
              showCustomDialog(context);
            },
            clipBehavior: Clip.antiAliasWithSaveLayer,
            backgroundColor: AppColor.white,
            child: const Icon(
              Icons.question_answer,
              color: AppColor.black,
              size: 30.0,
            ),
          ),
          body: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              spacing: 20.0,
              children: [
                Expanded(
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    color: AppColor.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      spacing: 20.0,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: CustomTextWidget(
                            value: "Plans & Packages",
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: AnimationLimiter(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                spacing: 20.0,
                                children:
                                    AnimationConfiguration.toStaggeredList(
                                  duration: const Duration(seconds: 1),
                                  childAnimationBuilder: (widget) =>
                                      SlideAnimation(
                                    horizontalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: widget,
                                    ),
                                  ),
                                  children: [
                                    Wrap(
                                      spacing: 20.0,
                                      runSpacing: 20.0,
                                      direction: Axis.horizontal,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      children: [
                                        Card(
                                          elevation: 5.0,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: AppColor.white,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const SizedBox(
                                                  height: 20.0,
                                                ),
                                                CustomTextWidget(
                                                  value:
                                                      "Basic Package (Small Projects)",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  color: AppColor.black,
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Wrap(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Ideal for: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value:
                                                          "Simple mobile apps with 2-3 screens, minimal backend, or static content apps.",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  child: RichText(
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    textAlign: TextAlign.left,
                                                    softWrap: true,
                                                    text: const TextSpan(
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                      children: [
                                                        TextSpan(
                                                            text:
                                                                '• App design and development for 2-3 screens (Login, Home, and Profile).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Basic UI/UX using Flutter.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Firebase authentication (if required).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Basic navigation and routing.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Static content display (e.g., text, images, etc.).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• App deployment (Play Store/App Store assistance).'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value:
                                                          "Estimated Timeline: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value: "1-2 weeks",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Price Range: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value: "\$500 - \$1,000",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 5.0,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: AppColor.white,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const SizedBox(
                                                  height: 20.0,
                                                ),
                                                CustomTextWidget(
                                                  value:
                                                      "Standard Package (Medium Projects)",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  color: AppColor.black,
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Wrap(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Ideal for: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value:
                                                          "Apps with dynamic data, user management, or integration with 3rd-party APIs.",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  child: RichText(
                                                    text: const TextSpan(
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                      children: [
                                                        TextSpan(
                                                            text:
                                                                '• App design and development for 4-6 screens (Login, Dashboard, Profile, Settings, etc.).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Firebase integration (Firestore, Authentication, Storage).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• API integration (REST or GraphQL).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• User authentication and profile management.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Basic state management (Provider, Riverpod, etc.).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Push notifications.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Deployment and basic maintenance support.'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value:
                                                          "Estimated Timeline: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value: "3-4 weeks",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Price Range: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value:
                                                          "\$1,500 - \$3,000",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 5.0,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: AppColor.white,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const SizedBox(
                                                  height: 20.0,
                                                ),
                                                CustomTextWidget(
                                                  value:
                                                      "Premium Package (Complex Projects)",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  color: AppColor.black,
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Wrap(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Ideal for: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value:
                                                          "Full-fledged mobile apps with complex features, custom backend integration, or real-time updates.",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  child: RichText(
                                                    text: const TextSpan(
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                      children: [
                                                        TextSpan(
                                                            text:
                                                                '• Custom app development with up to 8-12 screens.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Advanced state management (BLoC, GetX, etc.).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Backend integration (Node.js, Django, etc.) or custom backend setup.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Integration with payment gateways (Stripe, PayPal).\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Real-time data sync using WebSockets or Firebase.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Advanced animations and custom UI design.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• In-app purchases and subscription models.\n'),
                                                        WidgetSpan(
                                                          child: SizedBox(
                                                              height: 30.0),
                                                        ),
                                                        TextSpan(
                                                            text:
                                                                '• Post-launch support and maintenance.'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value:
                                                          "Estimated Timeline: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value: "6-8 weeks",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5.0,
                                                ),
                                                Row(
                                                  children: [
                                                    CustomTextWidget(
                                                      value: "Price Range: ",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                    CustomTextWidget(
                                                      value:
                                                          "\$4000 - \$10,000+",
                                                      fontSize: 15.0,
                                                      color: AppColor.black,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //     horizontal: 10.0,
                                    //     vertical: 8.0,
                                    //   ),
                                    //   child: CustomTextWidget(
                                    //     value: "Client Testimonials",
                                    //     fontWeight: FontWeight.w600,
                                    //     fontSize: 18.0,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),
                                    // const SizedBox(
                                    //   height: 10.0,
                                    // ),
                                    // const Card(
                                    //   elevation: 5.0,
                                    //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                    //   color: AppColor.white,
                                    //   margin: EdgeInsets.symmetric(
                                    //       horizontal: 30.0, vertical: 10.0),
                                    //   child: Padding(
                                    //     padding: EdgeInsets.all(30.0),
                                    //     child: Column(
                                    //       crossAxisAlignment: CrossAxisAlignment.start,
                                    //       mainAxisAlignment: MainAxisAlignment.start,
                                    //       mainAxisSize: MainAxisSize.max,
                                    //       spacing: 20.0,
                                    //       children: [],
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      /// DeskTop View
      desktopBody: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showCustomDialog(context);
            },
            clipBehavior: Clip.antiAliasWithSaveLayer,
            backgroundColor: AppColor.white,
            child: const Icon(
              Icons.question_answer,
              color: AppColor.black,
              size: 30.0,
            ),
          ),
          body: Row(
            children: [
              const CustomDrawer(),
              Expanded(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  color: AppColor.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    spacing: 20.0,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: CustomTextWidget(
                          value: "Plans & Packages",
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: AnimationLimiter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              spacing: 20.0,
                              children: AnimationConfiguration.toStaggeredList(
                                duration: const Duration(seconds: 1),
                                childAnimationBuilder: (widget) =>
                                    SlideAnimation(
                                  horizontalOffset: 50.0,
                                  child: FadeInAnimation(
                                    child: widget,
                                  ),
                                ),
                                children: [
                                  Wrap(
                                    spacing: 20.0,
                                    runSpacing: 20.0,
                                    direction: Axis.horizontal,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    children: [
                                      Card(
                                        elevation: 5.0,
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: AppColor.white,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              CustomTextWidget(
                                                value:
                                                    "Basic Package (Small Projects)",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                                color: AppColor.black,
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Wrap(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Ideal for: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value:
                                                        "Simple mobile apps with 2-3 screens, minimal backend, or static content apps.",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                child: RichText(
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  textAlign: TextAlign.left,
                                                  softWrap: true,
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              '• App design and development for 2-3 screens (Login, Home, and Profile).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Basic UI/UX using Flutter.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Firebase authentication (if required).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Basic navigation and routing.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Static content display (e.g., text, images, etc.).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• App deployment (Play Store/App Store assistance).'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value:
                                                        "Estimated Timeline: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "1-2 weeks",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Price Range: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "\$500 - \$1,000",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Card(
                                        elevation: 5.0,
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: AppColor.white,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              CustomTextWidget(
                                                value:
                                                    "Standard Package (Medium Projects)",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                                color: AppColor.black,
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Wrap(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Ideal for: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value:
                                                        "Apps with dynamic data, user management, or integration with 3rd-party APIs.",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                child: RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              '• App design and development for 4-6 screens (Login, Dashboard, Profile, Settings, etc.).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Firebase integration (Firestore, Authentication, Storage).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• API integration (REST or GraphQL).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• User authentication and profile management.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Basic state management (Provider, Riverpod, etc.).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Push notifications.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Deployment and basic maintenance support.'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value:
                                                        "Estimated Timeline: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "3-4 weeks",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Price Range: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "\$1,500 - \$3,000",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Card(
                                        elevation: 5.0,
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: AppColor.white,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              CustomTextWidget(
                                                value:
                                                    "Premium Package (Complex Projects)",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                                color: AppColor.black,
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Wrap(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Ideal for: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value:
                                                        "Full-fledged mobile apps with complex features, custom backend integration, or real-time updates.",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                child: RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              '• Custom app development with up to 8-12 screens.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Advanced state management (BLoC, GetX, etc.).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Backend integration (Node.js, Django, etc.) or custom backend setup.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Integration with payment gateways (Stripe, PayPal).\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Real-time data sync using WebSockets or Firebase.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Advanced animations and custom UI design.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• In-app purchases and subscription models.\n'),
                                                      WidgetSpan(
                                                        child: SizedBox(
                                                            height: 30.0),
                                                      ),
                                                      TextSpan(
                                                          text:
                                                              '• Post-launch support and maintenance.'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value:
                                                        "Estimated Timeline: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "6-8 weeks",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Row(
                                                children: [
                                                  CustomTextWidget(
                                                    value: "Price Range: ",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                  CustomTextWidget(
                                                    value: "\$4000 - \$10,000+",
                                                    fontSize: 15.0,
                                                    color: AppColor.black,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //     horizontal: 10.0,
                                  //     vertical: 8.0,
                                  //   ),
                                  //   child: CustomTextWidget(
                                  //     value: "Client Testimonials",
                                  //     fontWeight: FontWeight.w600,
                                  //     fontSize: 18.0,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                  // const SizedBox(
                                  //   height: 10.0,
                                  // ),
                                  // const Card(
                                  //   elevation: 5.0,
                                  //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                  //   color: AppColor.white,
                                  //   margin: EdgeInsets.symmetric(
                                  //       horizontal: 30.0, vertical: 10.0),
                                  //   child: Padding(
                                  //     padding: EdgeInsets.all(30.0),
                                  //     child: Column(
                                  //       crossAxisAlignment: CrossAxisAlignment.start,
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       mainAxisSize: MainAxisSize.max,
                                  //       spacing: 20.0,
                                  //       children: [],
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
