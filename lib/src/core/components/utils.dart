/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:my_portfolio/src/config/export/export.dart';

// Future<void> downloadPdfWeb() async {
//   try {
//     // Load the PDF file from assets
//     ByteData data = await rootBundle.load(
//       'assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf',
//     );
//
//     // Convert ByteData to Uint8List
//     Uint8List bytes = data.buffer.asUint8List();
//
//     // Create a Blob object and URL for the PDF file
//     final blob = html.Blob([bytes], 'application/pdf');
//     final url = html.Url.createObjectUrlFromBlob(blob);
//
//     // Create a link and trigger download
//     final anchor =
//         html.AnchorElement(href: url)
//           ..setAttribute('download', 'AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf')
//           ..click();
//
//     // Clean up
//     html.Url.revokeObjectUrl(url);
//   } catch (e) {
//     debugPrint('Error downloading PDF: $e');
//   }
// }

launchURL({required String link}) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

// Future<void> downloadPdfFromAssets() async {
//   try {
//     // Load the PDF file from assets
//     ByteData data = await rootBundle
//         .load("assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
//     List<int> bytes = data.buffer.asUint8List();
//
//     // Get the app's downloads directory
//     Directory? directory = await getExternalStorageDirectory();
//     if (directory == null) return;
//
//     // Define file path
//     String filePath =
//         "${directory.path}/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf";
//     File file = File(filePath);
//
//     // Write the file
//     await file.writeAsBytes(bytes);
//
//     debugPrint("PDF saved to: $filePath");
//   } catch (e) {
//     debugPrint("Error saving PDF: $e");
//   }
// }
