/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int maxLines;

  const ReadMoreText({super.key, required this.text, this.maxLines = 3});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      spacing: 10.0,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : widget.maxLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          textAlign: TextAlign.justify,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              isExpanded ? "Read Less" : "Read More",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
