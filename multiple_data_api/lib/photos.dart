class Photos {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  Photos(
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  );

  factory Photos.fromJson(json) {
    return Photos(
      json['albumId'],
      json['id'],
      json['title'],
      json['url'],
      json['thumbnailUrl'],
    );
  }
}
