import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Operatsiyai extends StatefulWidget {
  const Operatsiyai({super.key});

  @override
  State<Operatsiyai> createState() => _YoutubeApp1State();
}

class _YoutubeApp1State extends State<Operatsiyai> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  late PlayerState _playerState;
  bool _isPlayerReady = false;

  int _currentPlayingIndex = 0;

  // Video IDlar
  final List<String> _ids = [
    'XLAOtjIoFCM', //1
  ];

  // Har bir video uchun alohida rasm
  final List<String> _images = [
    'https://img.youtube.com/vi/XLAOtjIoFCM/0.jpg', //1
  ];

  // Har bir video uchun alohida text
  final List<String> _titles = ['Operatsiya ы'];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        forceHD: true,
      ),
    )..addListener(_listener);

    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void _listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          _isPlayerReady = true;
        },
        onEnded: (data) {
          int currentIndex = _ids.indexOf(data.videoId);
          int nextIndex = (currentIndex + 1) % _ids.length;
          _controller.load(_ids[nextIndex]);
          setState(() {
            _currentPlayingIndex = nextIndex;
          });
        },
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          title: const Text('Operatsiya ы'),
          backgroundColor: Color(0xFF001645),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF001645), Color(0xFF0172B2)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              player,
              const SizedBox(height: 16),
              Text(
                _titles[_currentPlayingIndex],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 10),
              // ✅ Bitta Column ichida barcha videolar
              Column(
                children: List.generate(
                  _ids.length,
                  (index) => _videoItem(index),
                ),
              ),
              const SizedBox(height: 20),

              // Video meta ma'lumotlari
            ],
          ),
        ),
      ),
    );
  }

  Widget _videoItem(int index) {
    return GestureDetector(
      onTap: () {
        _controller.load(_ids[index]);
        setState(() {
          _currentPlayingIndex = index;
        });
      },
      child: Stack(
        children: [
          Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    _images[index],
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    _titles[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Hozirgi video ustida kichik "Ko‘rilmoqda" text
          if (_currentPlayingIndex == index)
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Ko‘rilmoqda',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10, // kichikroq font
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
