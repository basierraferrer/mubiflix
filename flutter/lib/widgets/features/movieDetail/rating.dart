import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/global/icon_text.dart';

class RatingDuration extends StatelessWidget {
  String score;
  String runtime;
  RatingDuration({super.key, this.score = '0.0', this.runtime = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          IconText(
            icon: const Icon(
              Icons.star,
              size: 14.0,
              color: Color(0xFFFFDC60),
            ),
            text: score,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconText(
              icon: const Icon(
                Icons.av_timer,
                size: 14.0,
                color: Colors.white,
              ),
              text: runtime,
            ),
          ),
        ],
      ),
    );
  }
}
