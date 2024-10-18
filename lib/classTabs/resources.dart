import 'package:flutter/material.dart';

class ResourcesPage extends StatefulWidget {
  const ResourcesPage({super.key});

  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  String selectedTextbook = 'Select Textbook';
  String selectedVideo = 'Select Video';
  String selectedArticle = 'Select Article';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20,),
          ListTile(
            leading: const Icon(Icons.book),
            title: DropdownButton<String>(
              value: selectedTextbook,
              onChanged: (String? newValue) {
                setState(() {
                  selectedTextbook = newValue!;
                });
              },
              items: <String>['Select Textbook', 'Textbook 1', 'Textbook 2', 'Textbook 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            onTap: () {
              // Navigate to textbooks page or open a list of textbooks for the selected textbook
            },
          ),
          ListTile(
            leading: const Icon(Icons.videocam),
            title: DropdownButton<String>(
              value: selectedVideo,
              onChanged: (String? newValue) {
                setState(() {
                  selectedVideo = newValue!;
                });
              },
              items: <String>['Select Video', 'Video 1', 'Video 2', 'Video 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            onTap: () {
              // Navigate to videos page or open a list of videos for the selected video
            },
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: DropdownButton<String>(
              value: selectedArticle,
              onChanged: (String? newValue) {
                setState(() {
                  selectedArticle = newValue!;
                });
              },
              items: <String>['Select Article', 'Article 1', 'Article 2', 'Article 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            onTap: () {
              // Navigate to articles page or open a list of articles for the selected article
            },
          ),
        ],
      ),
    );
  }
}
