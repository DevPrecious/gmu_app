import 'package:get/get.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MusicPlayerController extends GetxController {
  bool isPlaying = false;

  void playMusic() {
    isPlaying = !isPlaying;
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/audios/bidemi.mp3"),
      autoStart: true,
      showNotification: true,
    );
    refresh();
  }
}
