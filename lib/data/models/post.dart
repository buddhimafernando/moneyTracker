// purpose of this mode is to convert the json into dart objects

class Post {
  final String title;
  final String body;
  final int id;

  Post.fromJson(Map json) :
    title = json['title'],
    body = json['body'],
    id = json['id'];
}
