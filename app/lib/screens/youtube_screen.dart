import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeSearchScreen extends StatefulWidget {
  final List<String> initialHashtags;

  const YouTubeSearchScreen({this.initialHashtags = const ["health"], super.key});

  @override
  _YouTubeSearchScreenState createState() => _YouTubeSearchScreenState();
}

class _YouTubeSearchScreenState extends State<YouTubeSearchScreen> {
  List<dynamic> _videos = [];
  String _apiKey = "";
  bool _isLoading = true;
  final TextEditingController _hashtagController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchApiKey().then((_) {
      _hashtagController.text = widget.initialHashtags.join(", ");
      _fetchVideosByHashtags(widget.initialHashtags);
    });
  }

  Future<void> _fetchApiKey() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();
    setState(() {
      _apiKey = remoteConfig.getString('youtube_api');
    });
  }

  Future<void> _fetchVideosByHashtags(List<String> hashtags) async {
    if (_apiKey.isEmpty) {
      print("Error: API key is missing.");
      return;
    }
    if (hashtags.isEmpty) return;

    setState(() => _isLoading = true);

    // Convert list of hashtags into YouTube query format
    String query = hashtags.map((tag) => "%23${tag.trim()}").join(" ");
    final url = Uri.parse(
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$query&type=video&key=$_apiKey");

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _videos = data['items'];
          _isLoading = false;
        });
      } else {
        print("Error: Failed to fetch videos (Status: ${response.statusCode})");
        setState(() => _isLoading = false);
      }
    } catch (e) {
      print("Error fetching videos: $e");
      setState(() => _isLoading = false);
    }
  }

  void _playVideo(String videoId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubePlayerScreen(videoId: videoId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 243, 217, 216),
        title: Text("Educational videos for you"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _videos.isEmpty
                    ? const Center(child: Text("No videos found"))
                    : ListView.builder(
                        itemCount: _videos.length,
                        itemBuilder: (context, index) {
                          final video = _videos[index];
                          final videoId = video['id']['videoId'];
                          final title = video['snippet']['title'];
                          final thumbnailUrl = video['snippet']['thumbnails']['high']['url'];

                          return GestureDetector(
                            onTap: () => _playVideo(videoId),
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                                    child: Image.network(
                                      thumbnailUrl,
                                      width: double.infinity,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}

class YoutubePlayerScreen extends StatelessWidget {
  final String videoId;
  const YoutubePlayerScreen({required this.videoId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("YouTube Player")),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: videoId,
            flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,
        ),
      ),
    );
  }
}
