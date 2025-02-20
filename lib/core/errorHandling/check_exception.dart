import 'package:gallery/core/errorHandling/app_exception.dart';
import 'package:http/http.dart' as http;

class CheckException {
  static dynamic response(http.Response? response) {
    if (response == null) {
      throw FetchDataException(
        message: "لطفا اتصال اینترنت خود را بررسی کنید",
      );
    }
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException(response: response);
      case 401:
        throw UnauthorizedException();
      case 403:
        throw NotAllowedRequestException();
      case 404:
        throw NotFoundException(response: response);
      case 500:
        throw ServerException();
      case 429:
        throw TooManyRequestException();

      default:
        throw FetchDataException(
            message: '${response.statusCode}fetch exception');
    }
  }
}
