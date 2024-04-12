class Datamodel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const Datamodel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Datamodel.fromJson(Map<String, dynamic> json) {
    return Datamodel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}