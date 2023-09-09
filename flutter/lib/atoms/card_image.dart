import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  /// Constants
  final noAvailableImage =
      "https://github.com/basierraferrer/mubiflix_fl/blob/65c49277cef7d08223f75f23aeee79fec912a121/assets/img/noAvailable.jpg";

  final url = 'https://image.tmdb.org/t/p/original';

  /// Class Properties
  String pathImage;
  double? width;
  double? height;
  BoxFit? fitImage;
  EdgeInsetsGeometry? margin;
  double opacity;
  BoxShape shape;
  BorderRadiusGeometry? radius;
  VoidCallback? onPressed;
  bool hasCallback = false;

  CardImage({
    super.key,
    this.pathImage = '',
    this.width,
    this.height,
    this.margin,
    this.fitImage = BoxFit.cover,
    this.opacity = 1.0,
    this.shape = BoxShape.rectangle,
    this.radius,
    this.onPressed,
  }) {
    if (pathImage.isEmpty) {
      pathImage = noAvailableImage;
    } else {
      pathImage = '$url$pathImage';
    }

    if (onPressed.toString().isEmpty) {
      hasCallback = false;
    }
  }

  CardImage.action({
    super.key,
    this.pathImage = '',
    this.width,
    this.height,
    this.margin,
    this.fitImage = BoxFit.cover,
    this.opacity = 1.0,
    this.shape = BoxShape.rectangle,
    this.radius,
    required this.onPressed,
  }) {
    if (pathImage.isEmpty) {
      pathImage = noAvailableImage;
    } else {
      pathImage = '$url$pathImage';
    }
    hasCallback = true;
  }

  Widget getChild() {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: opacity,
          fit: fitImage,
          image: NetworkImage(
            pathImage,
            scale: 1,
          ),
        ),
        borderRadius: radius,
        shape: shape,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return hasCallback
        ? ElevatedButton(
            onPressed: onPressed,
            child: getChild(),
          )
        : getChild();
  }
}
