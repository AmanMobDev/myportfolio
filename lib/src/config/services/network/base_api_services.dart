/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> postApi(String url, dynamic data, dynamic headers);
  Future<dynamic> deleteApi(String url, dynamic data);
  Future<dynamic> putApi(String url, dynamic data);
}
