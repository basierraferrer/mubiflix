import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/global/card_image.dart';

class Summary extends StatelessWidget {
  String posterPath;
  String overview;
  Summary({super.key, this.overview = '', this.posterPath = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CardImage(
            //pathImage: "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
            pathImage: posterPath,
            width: 125.0,
            height: 180.0,
            radius: const BorderRadius.all(Radius.circular(16.0)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                //"After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.",
                overview,
                style: const TextStyle(
                  fontFamily: "Poppins-R",
                  fontSize: 11.0,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
