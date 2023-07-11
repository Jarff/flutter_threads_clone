class ThreadModel {
  String? picture;
  String username = 'Loading...';
  String content = '';
  int repliesCount = 0;
  int likesCount = 381;
  bool? verified;

  ThreadModel(
      {this.picture,
      required this.username,
      required this.content,
      required this.repliesCount,
      required this.likesCount,
      this.verified = false});
}
