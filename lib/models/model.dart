class Album{
  final int id ;
  final int userId;
  final String body;
  final String title;
  Album({required this.body,required this.title,required this.id,required this.userId});
  factory Album.fromJson(Map<String,dynamic>json){
    return Album(body: json['body'], title: json['title'], id: json['id'], userId: json['userId']);
  }
}