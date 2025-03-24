/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:my_portfolio/src/config/export/export.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
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
          body: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Container(
              color: AppColor.black,
              child: AnimationLimiter(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(seconds: 1),
                      childAnimationBuilder:
                          (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget),
                          ),
                      children: [
                        const SizedBox(height: 20.0),
                        CustomTextWidget(
                          value: AppString.certificates,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: AppColor.white,
                        ),
                        const SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      /// DeskTop View
      desktopBody: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.black,
          body: Row(
            children: [
              const CustomDrawer(),
              const SizedBox(width: 30.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    CustomTextWidget(
                      value: AppString.licensesAndCertifications,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: AppColor.white,
                    ),
                    const SizedBox(height: 50.0),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5.0),
                              SvgPicture.asset(
                                kotlin,
                                width: screenWidth * 0.05,
                                height: screenHeight * 0.05,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 15.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    value: "Flutter course - iOS Android Apps",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "LearnCodeOnline.in",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "Issued Jan 2021Issued Jan 2021",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "Credential ID 1422001366242410834",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Divider(
                                    color: AppColor.white,
                                    thickness: 5.0,
                                  ),
                                  const SizedBox(height: 10.0),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5.0),
                              SvgPicture.asset(
                                kotlin,
                                width: screenWidth * 0.05,
                                height: screenHeight * 0.05,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 15.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    value: "Flutter course - iOS Android Apps",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "LearnCodeOnline.in",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "Issued Jan 2021Issued Jan 2021",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 10.0),
                                  CustomTextWidget(
                                    value: "Credential ID 1422001366242410834",
                                    fontSize: 16.0,
                                    color: AppColor.white,
                                  ),
                                  const Divider(
                                    color: AppColor.white,
                                    thickness: 5.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
