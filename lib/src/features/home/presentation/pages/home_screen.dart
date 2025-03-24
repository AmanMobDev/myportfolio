import 'package:my_portfolio/src/config/export/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  /// List of icons
  List imageList = [
    dart,
    java,
    kotlin,
    swift,
    flutter,
    ios,
    android,
    firebase,
    git,
    github,
    jira,
    bitbucket,
    xcode,
    vscode,
    figma,
    adobexd,
    api,
    localDB,
    cicd,
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ResponsiveLayout(
      /// Mobile View
      mobileBody: SafeArea(
        child: Scaffold(
          key: _key,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: CustomTextWidget(
              value: "Resume",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          drawer: const CustomDrawer(),
          body: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Container(
              color: Colors.black,
              child: AnimationLimiter(
                child: SingleChildScrollView(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(seconds: 1),
                      childAnimationBuilder:
                          (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget),
                          ),
                      children: [
                        const SizedBox(height: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            /// About Me
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomTextWidget(
                                    value: "ABOUT ME",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 20.0),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: CustomTextWidget(
                                      value: AppString.summary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),

                            /// Icons
                            SizedBox(
                              height: 100,
                              width: MediaQuery.sizeOf(context).width,
                              child: CarouselSlider.builder(
                                itemCount:
                                    (imageList.length / 4)
                                        .ceil(), // Correct item count calculation
                                itemBuilder: (context, index, realIndex) {
                                  final startIndex = index * 4;
                                  final endIndex = startIndex + 4;
                                  //Handle cases where there are fewer than 3 images remaining
                                  final imagesToDisplay = imageList.sublist(
                                    startIndex,
                                    endIndex.clamp(0, imageList.length),
                                  );

                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceAround, // Distribute images evenly
                                    children:
                                        imagesToDisplay.map((imagePath) {
                                          return SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SvgPicture.asset(imagePath),
                                          );
                                        }).toList(),
                                  );
                                },
                                options: CarouselOptions(
                                  padEnds: false, // Adjust as needed
                                  viewportFraction:
                                      1.0, // Each item takes full width
                                  autoPlay: true,
                                  enlargeCenterPage: false, // Adjust as needed
                                  autoPlayCurve: Curves.linear,
                                ),
                              ),
                            ),

                            /// Skills
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomTextWidget(
                                    value: "SKILLS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 20.0),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Programming Languages: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Dart, Java, Kotlin, iOS",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Mobile App Development: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Flutter, Android SDK",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "UI/UX Design:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Material Design, Cupertino Design, Adobe XD, Figma",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Version Control: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Git, Github, Bitbucket",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Database: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "SQLite, Firebase, App Write",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "API Integration: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "RESTful APIs, JSON",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Tools: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Android Studio, Visual Studio Code, Git, JIRA, Postman, Xcode",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Testing: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Unit Testing, Widget Testing, Integration Testing",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    spacing: 10.0,
                                    children: [
                                      CustomTextWidget(
                                        value: "EXPERIENCE",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: AppColor.white,
                                      ),

                                      /// Chetu
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Software Engineer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Chetu India Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2021 - Present, Noida, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString.chetuExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      /// Eglogics
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Flutter || Android Developer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Eglogics Softech IT Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "03/2020 - 05/2021, Noida, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString
                                                          .eglogicsExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      /// Czars
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Android Developer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Czars India IT Pvt. Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2019 - 02/2020, Kanpur, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString.czarsExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 20.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 8.0,
                                  ),
                                  child: CustomTextWidget(
                                    value: "EDUCATION",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "Master of Computer Applications",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Jaipur National University",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "08/2019 - 08/2022, Jaipur",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 8.0,
                                  ),
                                  child: CustomTextWidget(
                                    value: "CERTIFICATION",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "GNIIT in Cloud and Mobile Software Engineering",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "NIIT Technologies Limited",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Issued Oct 2019",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "Flutter course - iOS Android Apps",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "LearnCodeOnline.in",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Issued Jan 2021",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 8.0,
                                  ),
                                  child: CustomTextWidget(
                                    value: "ADDITIONAL INFORMATION",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0,
                                          vertical: 10.0,
                                        ),
                                        child: CustomTextWidget(
                                          value: "SOFT SKILLS",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Wrap(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Teamwork",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Communication",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Problem-solving",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Agile",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Methodology",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Time Management",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0,
                                          vertical: 10.0,
                                        ),
                                        child: CustomTextWidget(
                                          value: "LANGUAGES",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Wrap(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "English (Fluent)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Hindi (Fluent)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
          body: Row(
            children: [
              const CustomDrawer(),
              Expanded(
                flex: 2,
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  color: AppColor.black,
                  child: SingleChildScrollView(
                    child: AnimationLimiter(
                      child: Column(
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(seconds: 1),
                          childAnimationBuilder:
                              (widget) => SlideAnimation(
                                horizontalOffset: 50.0,
                                child: FadeInAnimation(child: widget),
                              ),
                          children: [
                            const SizedBox(height: 20.0),

                            /// Name & Title
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder:
                                                  (context) =>
                                                      const ProjectScreen(),
                                            ),
                                          );
                                        },
                                        child: CustomTextWidget(
                                          value: "Aman Mishra",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 20.0),
                                      CustomTextWidget(
                                        value: "Software Engineer",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20.0),

                                /// About Me
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomTextWidget(
                                        value: "ABOUT ME",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(height: 20.0),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.9,
                                        child: CustomTextWidget(
                                          value: AppString.summary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20.0),

                                /// Icons
                                SizedBox(
                                  height: 100,
                                  width: screenWidth,
                                  child: CarouselSlider.builder(
                                    itemCount:
                                        (imageList.length / 4)
                                            .ceil(), // Correct item count calculation
                                    itemBuilder: (context, index, realIndex) {
                                      final startIndex = index * 4;
                                      final endIndex = startIndex + 4;
                                      //Handle cases where there are fewer than 3 images remaining
                                      final imagesToDisplay = imageList.sublist(
                                        startIndex,
                                        endIndex.clamp(0, imageList.length),
                                      );

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceAround, // Distribute images evenly
                                        children:
                                            imagesToDisplay.map((imagePath) {
                                              return Expanded(
                                                flex: 1,
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SvgPicture.asset(
                                                    imagePath,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                      );
                                    },
                                    options: CarouselOptions(
                                      padEnds: false, // Adjust as needed
                                      viewportFraction:
                                          1.0, // Each item takes full width
                                      autoPlay: true,
                                      enlargeCenterPage:
                                          false, // Adjust as needed
                                      autoPlayCurve: Curves.linear,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            /// Skills
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomTextWidget(
                                    value: "SKILLS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(height: 20.0),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Programming Languages: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Dart, Java, Kotlin",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Mobile App Development: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Flutter, Android SDK",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "UI/UX Design:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Material Design, Cupertino Design, Adobe XD, Figma",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Version Control: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "Git, Github, Bitbucket",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Database: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "SQLite, Firebase, App Write",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "API Integration: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value: "RESTful APIs, JSON",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Tools: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Android Studio, Visual Studio Code, Git, JIRA, Postman, Xcode",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Testing: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 10.0),
                                            CustomTextWidget(
                                              value:
                                                  "Unit Testing, Widget Testing, Integration Testing",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),

                                    /*CustomTextWidget(
                                    value:
                                        "Programming Languages: Dart, Java, Kotlin\nMobile App Development: Flutter, Android SDK\nUI/UX Design: Material Design, Cupertino Design,  Adobe XD, Figma\nVersion Control: Git, Github,  Bitbucket\nDatabase: SQLite, Firebase,  App Write\nAPI Integration: RESTful APIs, JSON, XML\nTools: Android Studio, Visual Studio Code, Git, JIRA,  Postman, Xcode\nTesting: Unit Testing, Widget Testing, Integration Testing.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    textAlign: TextAlign.justify,
                                  ),*/
                                  ),
                                ],
                              ),
                            ),

                            ///Experience
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    spacing: 10.0,
                                    children: [
                                      CustomTextWidget(
                                        value: "EXPERIENCE",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: AppColor.white,
                                      ),

                                      /// Chetu
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Software Engineer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Chetu India Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2021 - Present, Noida, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString.chetuExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      /// Eglogics
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Flutter || Android Developer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Eglogics Softech IT Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "03/2020 - 05/2021, Noida, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString
                                                          .eglogicsExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      /// Czars
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Android Developer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Czars India IT Pvt. Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 8.0,
                                            ),
                                            child: SizedBox(
                                              width:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2019 - 02/2020, Kanpur, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          Wrap(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0,
                                                    ),
                                                child: CustomTextWidget(
                                                  value:
                                                      AppString.czarsExperience,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13.0,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 20.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: AppColor.black,
                  height: screenHeight,
                  width: screenWidth,
                  child: AnimationLimiter(
                    child: ListView(
                      shrinkWrap: true,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(seconds: 1),
                        childAnimationBuilder:
                            (widget) => SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(child: widget),
                            ),
                        children: [
                          const SizedBox(height: 20.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8.0,
                                ),
                                child: CustomTextWidget(
                                  value: "EDUCATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "Master of Computer Applications",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Jaipur National University",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "08/2019 - 08/2022, Jaipur",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 40.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8.0,
                                ),
                                child: CustomTextWidget(
                                  value: "CERTIFICATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "GNIIT in Cloud and Mobile Software Engineering",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "NIIT Technologies Limited",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Issued Oct 2019",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 25.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "Flutter course - iOS Android Apps",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "LearnCodeOnline.in",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Issued Jan 2021",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8.0,
                                ),
                                child: CustomTextWidget(
                                  value: "ADDITIONAL INFORMATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 10.0,
                                      ),
                                      child: CustomTextWidget(
                                        value: "SOFT SKILLS",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Teamwork",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Communication",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Problem-solving",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Agile",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Methodology",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Time Management",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 10.0,
                                      ),
                                      child: CustomTextWidget(
                                        value: "LANGUAGES",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "English (Fluent)",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                  Radius.circular(200.0),
                                                ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Hindi (Fluent)",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
