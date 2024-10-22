import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  final String channelName;
  final String views;
  final String duration;

  const VideoCard({
    required this.thumbnailUrl,
    required this.title,
    required this.channelName,
    required this.views,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video Thumbnail
          Stack(
            children: [
              Image.network(
                thumbnailUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    duration,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          // Video Title and Channel Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Text(
                  '$channelName • $views views',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


