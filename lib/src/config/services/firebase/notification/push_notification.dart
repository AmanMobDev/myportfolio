import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:my_portfolio/src/config/services/network/network_api_services.dart';

import '../../../export/export.dart';

/*******************************************************************************
 * Created By Aman Mishra
 ******************************************************************************/
class PushNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  static final PushNotificationService _instance =
      PushNotificationService._internal();
  factory PushNotificationService() => _instance;
  PushNotificationService._internal();

  Future<void> setupFCM() async {
    // Request permission for notifications
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint("Notification permission granted!");
    } else {
      debugPrint("Notification permission denied!");
    }
  }

  Future<void> getFCMToken() async {
    String? token = await _messaging.getToken();
    debugPrint("FCM Token: $token");
    Map<String, dynamic> tokenFCM = {"token": token};
    DataBaseCollectionServices()
        .addData("fcmToken", tokenFCM)
        .then(
          (value) {
            debugPrint("FCM Token Added Successfully");
          },
          onError: (error) {
            debugPrint("FCM Token Error: $error");
          },
        );
  }

  void listenToMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("📩 New Notification: ${message.notification?.title}");
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint("🔄 App opened by tapping notification!");
    });
  }

  Future<String> getAccessToken() async {
    String url = "https://www.googleapis.com/auth/firebase.messaging";

    final client = await auth.clientViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson({
        "type": "service_account",
        "project_id": "myportfolio-60082",
        "private_key_id": "3f7fd0cd20923c308e8bc2a4953510c4ad0db60d",
        "private_key":
            "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDGfYd9PrCk1H1B\nFUwDCrtfswE+Zlxf3W5OD634rnLMa6fsFqi2CbdpIgS2irPdVMf1dmcbf9o1KB6o\nG6v1z7rr+m+0l3EthU+WSbiswadKvciLrK51bSAHsD9W4ZjOAMLzDRqZ/JTf62XM\nv5wOCy2PQ0XwM24XYdRHbvdvqeuZiHz2MoSF8Oq2uum1Kq8tLb1nku9jf98V3baN\nyYNPOLVh5czIzSfC8jNozE0zF6IkEqH40MCC3vAHRREcm06ywxoN1CS/OTboaF1q\nC9zmukFfz4EYpRtgMG2Zj1nDcIG6nyDoD1VouKmVXUz6AuepHO+E8zkdn0gJNrpM\nhdsVOKIDAgMBAAECggEAD8dExk5THmyMdGhWqDCUioahRQOVY5gnlOmm1mDlBp5R\nipvr12StrBwkgcTu3VudoEPu7amxKo6WOUjR1518FMF4sG4QH3fnHAxKM47FV1Sq\nJNLvn1gIYXQU5OQpZcl7tcnHNpHJ3S704wd28UrZg/eWD1fB8Evk4woi00E6VZ73\nD5Jsf1wvjeaUTevCdOFbyKC1301jU4FYXtXfVZsESf4T4v5dw/RvdvvzVhAHi2yD\nqO6uhqATe8ottzn+7ABm737i8q/16nvtGz6SlpkiLsTmku5QfFxc/uJW+riyEzD2\nplhfAL3tKrQ1FoUGhi5PXIPy71tSfk79ZJGTzrFYAQKBgQDtfJnBhibwgfYpf3fR\nfQ+nJj94MdUsDNiv3Y/qnTzmavahakE2bIgyQwv4m3EJIamlzHUih65XJhnFJ7ev\n8XyjiYxAk+97boy+Y2WERX32u9AurFyffKxFMdYahsYOawVhEOUY2yhvg6NNOBlX\nNy8dj46MyCbb/oTsLsca/0SUAQKBgQDV9rLAyDpUprMufJ6/2GNfp11E14QT4L3Q\nFepPUq9ee+dlGsmPG8O2YsMVN+BfR/SzYDdH0yDE2Xy6iHxBmmgLbjnZLsw7vaUx\n4QIlmSyHUPKYKPvnfL2JAEj4W8l72bJkdXEpDjKOIdefvG+ZGY08CvNA7s414CHo\nJiZAknLmAwKBgD3kk03UYKGdvUHjbp6yMTomxbPViPEKCA8Nd0x13kFO7yfyQTyl\n3Hj88EnCeRsgIs6LEpwFMHKWA3FWgJDiJtGYL21FIMzSauvTi8mFMuby27bORPVr\n0JnX+yy+oy9uxOAfPxXTSB6H+C9Px4rrXuQdXdFi+H2tP4cuScXHcWABAoGAHTdr\nn0F4HZkJvJ5NuxqcLzKWXNEk+uXkZWaosR40Ti2TIk4vGbiL1/rScrJHlBsqQdgw\nlEEzJ04fZwU+GmMwM+dgRNTMFJhH13DHL0UkPHIEPlzSUQDKjMuaKze1YpEOeANF\naXrD0n6yh+BeSMShcYJ5RvOU+uxZFO8oqAaXY+sCgYEA56+D3UxsWUKsTqZgrumg\na3Fx1BNj1dVqiQlNIjzS4hOsEqSb9gTy7D3bSW1+JNt+EU6VSqXuonM2yZz6bq2o\nJwjhl3ylTdD114NFW+mdKmJr9dTrY1GtIWFMJsWGFtxk91UyDDqSGMynu8FDLFFw\n/HHvInnosP1FXBkwLGdRmCI=\n-----END PRIVATE KEY-----\n",
        "client_email":
            "firebase-adminsdk-fbsvc@myportfolio-60082.iam.gserviceaccount.com",
        "client_id": "110429072445540964681",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url":
            "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url":
            "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40myportfolio-60082.iam.gserviceaccount.com",
        "universe_domain": "googleapis.com",
      }),
      [url],
    );

    final accessToken = client.credentials.accessToken.data;
    return accessToken;
  }

  // Send FCM notification
  Future<void> sendPushNotification({String? name, String? query}) async {
    final accessToken = await getAccessToken();
    debugPrint("Access Token: $accessToken");

    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('fcmToken').get();

    // Extract the data from the QuerySnapshot
    List<Map<String, dynamic>> data =
        querySnapshot.docs.map((DocumentSnapshot document) {
          return document.data() as Map<String, dynamic>;
        }).toList();

    debugPrint("Access Token: ${data[0]['token'].toString()}");

    NetWorkAPIService().postApi(
      'https://fcm.googleapis.com/v1/projects/myportfolio-60082/messages:send',
      {
        "message": {
          "token": data[0]['token'].toString(),
          "notification": {"title": name, "body": query},
        },
      },
      {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    );

    // final response = await http.post(
    //   Uri.parse(
    //     'https://fcm.googleapis.com/v1/projects/myportfolio-60082/messages:send',
    //   ),
    //   headers: {
    //     'Authorization': 'Bearer $accessToken',
    //     'Content-Type': 'application/json',
    //   },
    //   body: jsonEncode({
    //     "message": {
    //       "token": data[0]['token'].toString(),
    //       "notification": {"title": name, "body": query},
    //     },
    //   }),
    // );

    // debugPrint(response.body);
  }
}
