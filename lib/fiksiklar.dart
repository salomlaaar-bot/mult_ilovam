import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Fiksiklar extends StatefulWidget {
  const Fiksiklar({super.key});

  @override
  State<Fiksiklar> createState() => _YoutubeApp1State();
}

class _YoutubeApp1State extends State<Fiksiklar> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  late PlayerState _playerState;
  bool _isPlayerReady = false;

  int _currentPlayingIndex = 0;

  // Video IDlar
  final List<String> _ids = [
    'PErS2m9d7KM', //1
    'KTA8zXFWz8Y', //2
    '_c_NVsNrWo0', //3
    'CbJXBspndnw', //4
    'vRZwgmplPFQ', //5
    'jAufVJdB5z4', //6
    'iMaLDHxQkK8', //7
    'Zxo_lVAovKw', //8
    '8qGq1PfWsmA', //9
    'LICHrwDoSpQ', //10
    'H83Yt9M6zoQ', //11
    'RjDkIH3MYX8', //12
    'SYHLEc-kHjk', //13
    '2zX_qzvHlC0', //14
    'TdMZvbp5qKo', //15
    'KElkkyiyFUY', //16
    'Ht3lnCJsiYc', //17
    '-DU1NhGcHKE', //18
    'Z7vU3NwUT6Y', //19
    '31DfnxFy_W8', //20
    'SdaMTS0dtac', //21
    '_H-3ZJhjhN0', //22
    'wiKo7v4d270', //23
    'MeDye2jrhNc', //24
    'MeDye2jrhNc', //25
    'LxfVcEK3j60', //26
    'F5gDudO73ls', //27
    'Pt3U8eDZpGo', //28
    'kJC62go3VHM', //29
    'czhVl9HWNko', //30
  ];

  // Har bir video uchun alohida rasm
  final List<String> _images = [
    'https://img.youtube.com/vi/PErS2m9d7KM/0.jpg', //1
    'https://img.youtube.com/vi/KTA8zXFWz8Y/0.jpg', //2
    'https://img.youtube.com/vi/_c_NVsNrWo0/0.jpg', //3
    'https://img.youtube.com/vi/CbJXBspndnw/0.jpg', //4
    'https://img.youtube.com/vi/vRZwgmplPFQ/0.jpg', //5
    'https://img.youtube.com/vi/jAufVJdB5z4/0.jpg', //6
    'https://img.youtube.com/vi/iMaLDHxQkK8/0.jpg', //7
    'https://img.youtube.com/vi/Zxo_lVAovKw/0.jpg', //8
    'https://img.youtube.com/vi/8qGq1PfWsmA/0.jpg', //9
    'https://img.youtube.com/vi/LICHrwDoSpQ/0.jpg', //10
    'https://img.youtube.com/vi/H83Yt9M6zoQ/0.jpg', //11
    'https://img.youtube.com/vi/RjDkIH3MYX8/0.jpg', //12
    'https://img.youtube.com/vi/SYHLEc-kHjk/0.jpg', //13
    'https://img.youtube.com/vi/2zX_qzvHlC0/0.jpg', //14
    'https://img.youtube.com/vi/TdMZvbp5qKo/0.jpg', //15
    'https://img.youtube.com/vi/KElkkyiyFUY/0.jpg', //16
    'https://img.youtube.com/vi/Ht3lnCJsiYc/0.jpg', //17
    'https://img.youtube.com/vi/-DU1NhGcHKE/0.jpg', //18
    'https://img.youtube.com/vi/Z7vU3NwUT6Y/0.jpg', //19
    'https://img.youtube.com/vi/31DfnxFy_W8/0.jpg', //20
    'https://img.youtube.com/vi/SdaMTS0dtac/0.jpg', //21
    'https://img.youtube.com/vi/_H-3ZJhjhN0/0.jpg', //22
    'https://img.youtube.com/vi/wiKo7v4d270/0.jpg', //23
    'https://img.youtube.com/vi/MeDye2jrhNc/0.jpg', //24
    'https://img.youtube.com/vi/MeDye2jrhNc/0.jpg', //25
    'https://img.youtube.com/vi/LxfVcEK3j60/0.jpg', //26
    'https://img.youtube.com/vi/F5gDudO73ls/0.jpg', //27
    'https://img.youtube.com/vi/Pt3U8eDZpGo/0.jpg', //28
    'https://img.youtube.com/vi/kJC62go3VHM/0.jpg', //29
    'https://img.youtube.com/vi/czhVl9HWNko/0.jpg', //30
  ];

  // Har bir video uchun alohida text
  final List<String> _titles = [
    'Fiksiklar 1-Qism',
    'Fiksiklar 2-Qism',
    'Fiksiklar 3-Qism',
    'Fiksiklar 4-Qism',
    'Fiksiklar 5-Qism',
    'Fiksiklar 6-Qism',
    'Fiksiklar 7-Qism',
    'Fiksiklar 8-Qism',
    'Fiksiklar 9-Qism',
    'Fiksiklar 10-Qism',
    'Fiksiklar 11-Qism',
    'Fiksiklar 12-Qism',
    'Fiksiklar 13-Qism',
    'Fiksiklar 14-Qism',
    'Fiksiklar 15-Qism',
    'Fiksiklar 16-Qism',
    'Fiksiklar 17-Qism',
    'Fiksiklar 18-Qism',
    'Fiksiklar 19-Qism',
    'Fiksiklar 20-Qism',
    'Fiksiklar 21-Qism',
    'Fiksiklar 22-Qism',
    'Fiksiklar 23-Qism',
    'Fiksiklar 24-Qism',
    'Fiksiklar 25-Qism',
    'Fiksiklar 26-Qism',
    'Fiksiklar 27-Qism',
    'Fiksiklar 28-Qism',
    'Fiksiklar 29-Qism',
    'Fiksiklar 30-Qism',
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
          title: const Text('Fiksiklar '),
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
