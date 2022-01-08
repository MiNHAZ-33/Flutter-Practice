class Places {
  String id;
  String title;
  String imageUrl;
  int duration;
  bool isFav;

  Places(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      this.isFav = false});
}
