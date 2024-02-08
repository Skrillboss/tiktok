import 'package:tiktok/domain/entities/video_post.dart';

class LocalVideoModel{

  final String caption;
  final String videoUrl;
  final int likes;
  final int views;
  
  LocalVideoModel({
    required this.caption, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0, 
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    caption: json["name"], 
    videoUrl: json["videoUrl"], 
    likes: json["likes"], 
    views: json["views"]
    );

     Map<String, dynamic> toJson() => {
        "name": caption,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views
    };

    VideoPost toVideoPostEntity()=>VideoPost(
      caption: caption,
      videoUrl: videoUrl,
      likes: likes,
      views: views
    );
}