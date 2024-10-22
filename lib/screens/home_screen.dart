import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: ListView(
        children: [
          // Video Categories placeholder
          Container(
            height: 50,
            color: Colors.red,
            child: Center(child: Text('Video Categories')),
          ),
          // Video List
          Column(
            children: [
              VideoCard(
                thumbnailUrl: 'https://recess-project-i6n130ubr-taaka-esthers-projects.vercel.app/',
                title: 'Sample Video Title 1',
                channelName: 'Channel 1',
                views: '1.2M',
                duration: '12:30',
              ),
              VideoCard(
                thumbnailUrl: 'https://recess-project-i6n130ubr-taaka-esthers-projects.vercel.app/',
                title: 'Sample Video Title 2',
                channelName: 'Channel 2',
                views: '900K',
                duration: '8:15',
              ),
              // Add more VideoCard widgets here...
            ],
          ),
          // Video Shorts placeholder
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text('Video Shorts')),
          ),
        ],
      ),
    );
  }
}

