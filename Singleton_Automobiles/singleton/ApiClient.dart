class ApiClient {
  static final ApiClient _singleInstance = ApiClient._internal();
  static final String clientName = 'Single-API-Client';
  //Dart provides factory constructors, which eliminates the need
  //of public static methods in order to create Singletons.
  factory ApiClient() {
    return _singleInstance;
  }

  String getClientName() {
    return clientName;
  }

  //adding ._internal makes it a private constructor
  //REF:: https://stackoverflow.com/questions/11112506/what-are-the-semantics-of-internal
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
