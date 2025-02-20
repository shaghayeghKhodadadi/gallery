import 'package:http/http.dart' as http;

class AppException implements Exception {
  final String message;
  http.Response? response;

  AppException({
    required this.message,
  });
}

class ServerException extends AppException {
  ServerException({String? message})
      : super(message: message ?? "مشکلی رخ داده است، لطفاً دوباره تلاش کنید");
}

class NotFoundException extends AppException {
  NotFoundException({String? message, http.Response? response})
      : super(
          message: response?.body ?? "لطفا دوباره تلاش کنید", // Use body for http.Response
        );
}

class BadRequestException extends AppException {
  BadRequestException({String? message, http.Response? response})
      : super(
          message: _getMessage(response),
        );

  static String _getMessage(http.Response? response) {
    if (response != null && response.body.isNotEmpty) {
      return response.body; // You can process the body to extract error messages if needed
    }
    return "Data has Corrupted";
  }
}

class FetchDataException extends AppException {
  FetchDataException({String? message})
      : super(message: message ?? "مشکلی رخ داده است، لطفاً دوباره تلاش کنید");
}

class UnauthorizedException extends AppException {
  UnauthorizedException({String? message,})
      : super(
          message: message ?? "invalid login plz login again",
        );
}

class TooManyRequestException extends AppException {
  TooManyRequestException({String? message,})
      : super(
          message:
              message ?? "تعداد درخواست‌ها زیاد است، لطفاً یک دقیقه صبر کنید.",
        );
}

class NotAllowedRequestException extends AppException {
  NotAllowedRequestException({String? message,})
      : super(
          message: message ?? "کاربر گرامی اجازه دسترسی به این بخش را ندارید",
        );
}
