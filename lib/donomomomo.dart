import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Donomomomo extends StatefulWidget {
  const Donomomomo({super.key});

  @override
  State<Donomomomo> createState() => _YoutubeApp1State();
}

class _YoutubeApp1State extends State<Donomomomo> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  late PlayerState _playerState;
  bool _isPlayerReady = false;

  int _currentPlayingIndex = 0;

  // Video IDlar
  final List<String> _ids = [
    'z-t_aURsxLM', //1
    'k7cPUMle-q8', //2
    'j3YknyFjfx4', //3
    'k8hSWX_BGlo', //4
    '-_wq-t595aM', //5
    '08FEUUtdJFk', //6
    '99UVk_wHx1Y', //7
    'Zxo_lVAovKw', //8
    '_jbOTsnybCM', //9
    'NkltircpnVs', //10
    'NcDPCguAbk8', //11
    'b9w9ZWKliiU', //12
    'XcNPLcPCEk4', //13
    'H0Mc3AysrPI', //14
  ];

  // Har bir video uchun alohida rasm
  final List<String> _images = [
    'https://img.youtube.com/vi/z-t_aURsxLM/0.jpg', //1
    'https://img.youtube.com/vi/k7cPUMle-q8/0.jpg', //2
    'https://img.youtube.com/vi/j3YknyFjfx4/0.jpg', //3
    'https://img.youtube.com/vi/k8hSWX_BGlo/0.jpg', //4
    'https://img.youtube.com/vi/-_wq-t595aM/0.jpg', //5
    'https://img.youtube.com/vi/08FEUUtdJFk/0.jpg', //6
    'https://img.youtube.com/vi/99UVk_wHx1Y/0.jpg', //7
    'https://img.youtube.com/vi/Zxo_lVAovKw/0.jpg', //8
    'https://img.youtube.com/vi/_jbOTsnybCM/0.jpg', //9
    'https://img.youtube.com/vi/LICHrwDoSpQ/0.jpg', //10
    'https://img.youtube.com/vi/NcDPCguAbk8/0.jpg', //11
    'https://img.youtube.com/vi/b9w9ZWKliiU/0.jpg', //12
    'https://img.youtube.com/vi/XcNPLcPCEk4/0.jpg', //13
    'https://img.youtube.com/vi/H0Mc3AysrPI/0.jpg', //14
  ];

  // Har bir video uchun alohida text
  final List<String> _titles = [
    'Dono Momomo 1-Qism',
    'Dono Momomo  2-Qism',
    'Dono Momomo  3-Qism',
    'Dono Momomo  4-Qism',
    'Dono Momomo  5-Qism',
    'Dono Momomo  6-Qism',
    'Dono Momomo  7-Qism',
    'Dono Momomo  8-Qism',
    'Dono Momomo  9-Qism',
    'Dono Momomo  10-Qism',
    'Dono Momomo  11-Qism',
    'Dono Momomo  12-Qism',
    'Dono Momomo 13-Qism',
    'Dono Momomo  14-Qism',
  ];

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
          title: const Text('Dono va momomo'),
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
