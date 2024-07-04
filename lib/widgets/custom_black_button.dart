import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomBlackButton extends StatelessWidget {
  const CustomBlackButton(
      {super.key,
      required this.title,
      this.visible = true,
      required this.nota});

  final String title;
  final bool visible;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: SizedBox(
        width: 39,
        height: 130,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  // minimumSize: const Size(36, 120),
                  backgroundColor: const Color(0xff202637),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3))),
              onPressed: () {
                AudioPlayer().play(AssetSource('notes/$nota.mp3'));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
