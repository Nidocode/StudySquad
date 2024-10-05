class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.book),
            // ignore: prefer_const_constructors
            title: Text('Textbooks'),
            onTap: () {
              // Navigate to textbooks page or open a list of textbooks
            },
          ),
          ListTile(
            leading: const Icon(Icons.videocam),
            title: const Text('Videos'),
            onTap: () {
              // Navigate to videos page or open a list of videos
            },
          ),
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Articles'),
            onTap: () {
              // Navigate to articles page or open a list of articles
            },
          ),
        ],
      ),
    );
  }
}

