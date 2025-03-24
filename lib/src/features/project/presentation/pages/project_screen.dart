import '../../../../config/export/export.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    final ScrollController mobileScrollController = ScrollController();
    final ScrollController desktopScrollController = ScrollController();

    return ResponsiveLayout(
      // Mobile View
      mobileBody: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: CustomTextWidget(
              value: AppString.resume,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          drawer: const CustomDrawer(),
          body: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  child: CustomTextWidget(
                    value: "PROJECTS",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: Scrollbar(
                    controller: mobileScrollController, // ✅ Assign controller
                    thumbVisibility: true,
                    child: GridView.builder(
                      controller: mobileScrollController, // ✅ Unique controller
                      primary:
                          false, // ✅ Prevents Flutter from adding another controller
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > mobileWidth
                                ? 2
                                : 1,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 2 / 2,
                      ),
                      itemCount:
                          dataProject.isNotEmpty
                              ? dataProject['project_data'].length
                              : 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ProjectCard(
                            title: dataProject['project_data'][index]['title'],
                            description:
                                dataProject['project_data'][index]['description'],
                            duration:
                                dataProject['project_data'][index]['duration'],
                            projectLink:
                                dataProject['project_data'][index]['projectLink'],
                            imageLink:
                                dataProject['project_data'][index]['imageLink'],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //  Desktop View
      desktopBody: Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          children: [
            const CustomDrawer(),
            const SizedBox(width: 30.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  CustomTextWidget(
                    value: "ACADEMIC PROJECT",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: AppColor.white,
                  ),
                  const SizedBox(height: 50.0),
                  Expanded(
                    child: Scrollbar(
                      controller:
                          desktopScrollController, // ✅ Unique controller
                      thumbVisibility: true,
                      child: GridView.builder(
                        controller:
                            desktopScrollController, // ✅ Assign controller
                        primary: false, // ✅ Prevents default Flutter controller
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width > mobileWidth
                                  ? 2
                                  : 1,
                          childAspectRatio: 4 / 2,
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                        ),
                        itemCount:
                            dataProject.isNotEmpty
                                ? dataProject['project_data'].length
                                : 0,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectCard(
                            title: dataProject['project_data'][index]['title'],
                            description:
                                dataProject['project_data'][index]['description'],
                            duration:
                                dataProject['project_data'][index]['duration'],
                            projectLink:
                                dataProject['project_data'][index]['projectLink'],
                            imageLink:
                                dataProject['project_data'][index]['imageLink'],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
