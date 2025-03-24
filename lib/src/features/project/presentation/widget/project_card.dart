import 'package:my_portfolio/src/config/export/export.dart';

import '../../../../core/components/utils.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

class ProjectCard extends StatelessWidget {
  final String? title;
  final String? duration;
  final String? description;
  final String? projectLink;
  final String? imageLink;
  List? data = [];

  ProjectCard({
    super.key,
    this.title,
    this.duration,
    this.description,
    this.projectLink,
    this.imageLink,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.white.withOpacity(0.09),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0.0, 0.0),
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: AppColor.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            primary: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    imageLink!,
                    height: screenHeight * 0.2,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CustomTextWidget(
                          value: title,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: AppColor.white,
                        ),
                        const SizedBox(width: 10.0),
                        CustomTextWidget(
                          value: duration,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: AppColor.white,
                        ),
                        const SizedBox(width: 10.0),
                        Center(
                          child: IconButton(
                            onPressed: () {
                              launchURL(link: projectLink!);
                            },
                            icon: SvgPicture.asset(
                              link,
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Flexible(child: ExpandableText(description!)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
