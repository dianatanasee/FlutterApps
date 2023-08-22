import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    return true;
  });

  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: XylophoneApp(),
      ),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  late AssetsAudioPlayer _assetsAudioPlayer;
  // final List<StreamSubscription> _subscriptions = [];
  final audios = <Audio>[
    Audio('assets/audios/note1.wav'),
    Audio('assets/audios/note2.wav'),
    Audio('assets/audios/note3.wav'),
    Audio('assets/audios/note4.wav'),
    Audio('assets/audios/note5.wav'),
    Audio('assets/audios/note6.wav'),
    Audio('assets/audios/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text(
          "Click me",
          textDirection: TextDirection.ltr,
        ),
        onPressed: () {},
      ),
    );
  }
}
