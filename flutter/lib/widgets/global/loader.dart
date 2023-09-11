import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final String? type;

  const Loader({super.key, this.type});

  List<Widget> generateLoaders() {
    if (type == 'list') {
      return List.generate(3, (index) => buildLoaderItem());
    } else {
      return [buildLoaderItem()];
    }
  }

  Widget buildLoaderItem() {
    return Container(
      margin: type == 'list' ? const EdgeInsets.only(right: 8.0) : null,
      height: type == 'list' ? 120.0 : 200.0,
      width: type == 'list' ? 60.0 : null,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF737373), width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          strokeWidth: 3.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: type == 'list' ? 150.0 : 200.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF737373)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: type == 'list'
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generateLoaders(),
            )
          : buildLoaderItem(),
    );
  }
}
