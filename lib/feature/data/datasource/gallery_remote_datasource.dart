import 'dart:convert';
import 'package:gallery/core/errorHandling/check_exception.dart';
import 'package:gallery/feature/data/model/image_model.dart';
import 'package:http/http.dart' as http;

class GalleryRemoteDataSource {
  final http.Client client;

  GalleryRemoteDataSource({http.Client? client}) : client = client ?? http.Client();

  Future<ImageListModel> imageList() async {
    try {
      final uri = Uri.parse('https://picsum.photos/v2/list');
      final response = await client.get(uri);
      
      if (response.statusCode == 200) {
        return ImageListModel.fromJson(json.decode(response.body));
      } else {
        return CheckException.response(response);
      }
    } catch (e) {
      return CheckException.response(null);
    }
  }
}