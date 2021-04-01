class ApiClient {
  static final ApiClient _singleInstance = ApiClient._internal();
  static final String clientName = 'Single-API-Client';
  factory ApiClient() {
    return _singleInstance;
  }

  String getClientName() {
    return clientName;
  }

  ApiClient._internal() {}
  //Other methods like
  //Fetch new data etc.
}

void main() {
  try {
    ApiClient a = ApiClient();
    print(a.getClientName());
    ApiClient b = ApiClient();
    if (identical(a, b)) {
      print('Same instances');
    }
  } catch (e) {
    print(e);
  }
}
