abstract class ApiRepository {
  Future<String?> sendApi({required String phone, required String countryCode});
  Future<String?> verifyApi({required String phone, required String otp});
}

class CallApis implements ApiRepository {
  @override
  Future<String?> sendApi(
      {required String phone, required String countryCode}) async {
    return '${phone},${countryCode}';
    // TODO: implement sendApi
    throw UnimplementedError();
  }

  @override
  Future<String?> verifyApi({required String phone, required String otp}) {
    // TODO: implement verifyApi
    throw UnimplementedError();
  }
}
