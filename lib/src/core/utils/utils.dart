import 'package:flutter/foundation.dart';

import '../../config/export/export.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/
class Utils {
  static toastMessages({String? message}) {
    Fluttertoast.showToast(
        msg: message!,
        //backgroundColor: AppColor.white,
        textColor: AppColor.black,
        fontSize: 25.0,
        webBgColor: "#FFFFFF",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR);
  }

  static snackBarMessages({BuildContext? context, String? message}) {
    if (message!.isNotEmpty) {
      ScaffoldMessenger.of(context!).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
      );
    }
  }

  static dynamic printOnError({dynamic data}) {
    if (kDebugMode) {
      return print("OnError Block :: ${data.toString()}");
    }
  }

  static dynamic printStatement({dynamic data}) {
    if (kDebugMode) {
      return print("Here Your Print Statement ::: ${data.toString()}");
    }
  }

  static dynamic printRequestLogs({String? url, dynamic data}) {
    if (kDebugMode) {
      return print("API REQUEST BODY :: ${data.toString()} \nURL ::$url");
    }
  }

  static dynamic printResponseLogs({dynamic data}) {
    if (kDebugMode) {
      return print("API RESPONSE BODY :: ${data.toString()}");
    }
  }

  static dynamic printExceptionLogs({dynamic data}) {
    if (kDebugMode) {
      return print("Exception :: ${data.toString()}");
    }
  }
}
