import 'package:flutter/material.dart';
import 'package:mubiflix/models/cast_movie.dart';
import 'package:mubiflix/molecules/cast_card.dart';

List<CastCard> getCastCards(List<CastMovie> castList) {
  List<CastCard> list = [];
  if (castList.isNotEmpty) {
    for (CastMovie castItem in castList) {
      list.add(
        CastCard(cast: castItem),
      );
    }
  }
  return list;
}

class CastCardList extends StatelessWidget {
  List<CastMovie> list;

  CastCardList({
    super.key,
    this.list = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Cast',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Poppins-M",
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 250.0,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return CastCard(cast: list[index]);
            },
            prototypeItem: CastCard(cast: list.first),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
