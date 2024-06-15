class SocialModels {
  final String title;

  SocialModels({required this.title});

  factory SocialModels.fromMap(Map<String, dynamic> map) {
    return SocialModels(title: map['title']);
  }
}
