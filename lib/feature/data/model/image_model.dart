class ImageListModel {
  List<ImageModel>? images;

  ImageListModel({this.images});

  factory ImageListModel.fromJson(List<dynamic> jsonList) {
    return ImageListModel(
      images: jsonList.map((json) => ImageModel.fromJson(json)).toList(),
    );
  }
}

class ImageModel {
  String? id;
  String? author;
  int? width;
  int? height;
  String? url;
  String? downloadUrl;

  ImageModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  /// Factory constructor to parse from JSON.
  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'] as String?,
      author: json['author'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      downloadUrl: json['download_url'] as String?,
    );
  }
}
