class Album{
  final int userId;
  final int id;
  final String title;
  final String body;
  const Album({required this.body, required this.id,required this.title,required this.userId});
  factory Album.fromJson(Map<String,dynamic>json){
    return Album( id: json['id'], title: json['title'], userId: json['userId'], body: json['body']);
  }
}