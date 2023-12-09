import 'package:get/get.dart';

class MusicPlayerController extends GetxController {
  bool isPlaying = false;

  void changeMusicMode() {
    isPlaying = !isPlaying;
    refresh();
  }
}
