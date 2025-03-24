/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
import '../../config/export/export.dart';

class TextWidget extends StatelessWidget {
  final String value;
  const TextWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}
