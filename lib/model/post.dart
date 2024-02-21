final String tablePosts = 'posts';

class PostFields {
  static final List<String> values = [id, content, time];

  static final String id = '_id';
  static final String content = 'content';
  static final String time = 'time';
}

class Post {
  final int? id;
  final String content;
  final DateTime createdTime;

  const Post({
    this.id,
    required this.content,
    required this.createdTime,
  });

  Post copy({
    int? id,
    String? content,
    DateTime? createdTime,
  }) =>
      Post(
        id: id ?? this.id,
        content: content ?? this.content,
        createdTime: createdTime ?? this.createdTime,
      );

  static Post fromJson(Map<String, Object?> json) => Post(
        id: json[PostFields.id] as int?,
        content: json[PostFields.content] as String,
        createdTime: DateTime.parse(json[PostFields.time] as String),
      );

  Map<String, Object?> toJson() => {
        PostFields.id: id,
        PostFields.content: content,
        PostFields.time: createdTime.toIso8601String(),
      };
}
