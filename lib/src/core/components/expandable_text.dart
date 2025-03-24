/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:my_portfolio/src/config/export/export.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText(this.text, {super.key});

  final String text;
  bool isExpanded = false;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 1000),
          child: ConstrainedBox(
            constraints:
                widget.isExpanded
                    ? const BoxConstraints()
                    : const BoxConstraints(maxHeight: 50.0),
            child: Text(
              widget.text,
              softWrap: true,
              style: const TextStyle(color: AppColor.white, fontSize: 15.0),
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        widget.isExpanded
            ? ConstrainedBox(constraints: const BoxConstraints())
            : TextButton(
              child: const Text(
                '...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () => setState(() => widget.isExpanded = true),
            ),
      ],
    );
  }
}
