import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../../common/http_methods.dart';
import '../api_constants/api_url_constants.dart';

class ApiMethods {
  // static Future<SimpleResponseModel?> userSignup({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   SimpleResponseModel? simpleResponseModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfUserSignup,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     simpleResponseModel =
  //         SimpleResponseModel.fromJson(jsonDecode(response.body));
  //     return simpleResponseModel;
  //   }
  //   return null;
  // }
  //
  // /// Send Otp For Login...
  // static Future<SendOtpModel?> sendOtpForLogin({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   SendOtpModel? sendOtpModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfLogin,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     sendOtpModel = SendOtpModel.fromJson(jsonDecode(response.body));
  //     return sendOtpModel;
  //   }
  //   return null;
  // }
  //
  // ///  Login With Otp ...
  // static Future<UserModel?> loginWithOtp({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel? userModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfLoginWithOtp,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     userModel = UserModel.fromJson(jsonDecode(response.body));
  //     return userModel;
  //   }
  //   return null;
  // }
  //
  // /// Send Otp For Forgot Password ....
  // static Future<SendOtpModel?> sendOtpForPassword({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   SendOtpModel? sendOtpModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfPasswordReset,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     sendOtpModel = SendOtpModel.fromJson(jsonDecode(response.body));
  //     return sendOtpModel;
  //   }
  //   return null;
  // }
  //
  // /// Check Otp for reset password.....
  // static Future<UserModel?> checkOtp({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel? simpleResponseModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfOtpVerify,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     simpleResponseModel = UserModel.fromJson(jsonDecode(response.body));
  //     return simpleResponseModel;
  //   }
  //   return null;
  // }
  //
  // /// Create new password .....
  // static Future<UserModel?> newPassword({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel? simpleResponseModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfChangePassword,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     simpleResponseModel = UserModel.fromJson(jsonDecode(response.body));
  //     return simpleResponseModel;
  //   }
  //   return null;
  // }
  //
  // ///  Get Profile  ...
  // static Future<UserModel?> getProfile({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  // }) async {
  //   UserModel? userModel;
  //   http.Response? response = await MyHttp.postMethod(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfGetProfile,
  //     wantSnackBar: false,
  //     checkResponse: checkResponse,
  //   );
  //   if (response != null) {
  //     userModel = UserModel.fromJson(jsonDecode(response.body));
  //     return userModel;
  //   }
  //   return null;
  // }
  //
  // ///Update Profile Api Calling.....
  // static Future<UserModel?> updateProfileApi({
  //   void Function(int)? checkResponse,
  //   Map<String, dynamic>? bodyParams,
  //   Map<String, File>? imageMap,
  // }) async {
  //   UserModel? logInModel;
  //   http.Response? response = await MyHttp.multipart(
  //     bodyParams: bodyParams,
  //     url: ApiUrlConstants.endPointOfUpdateProfile,
  //     imageMap: imageMap,
  //     checkResponse: checkResponse,
  //   );
  //
  //   if (response != null) {
  //     logInModel = UserModel.fromJson(jsonDecode(response.body));
  //     return logInModel;
  //   }
  //   return null;
  // }


}
