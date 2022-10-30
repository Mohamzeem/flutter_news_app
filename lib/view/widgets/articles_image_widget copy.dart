import 'package:flutter/material.dart';

class ArticlesImageWidget extends StatelessWidget {
  const ArticlesImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Image.network(
        image,
        width: 120,
        height: 120,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) => Container(
          width: 120,
          height: 120,
          color: Colors.blue,
          child: Center(
            child: Text(
              'No Photo Found!',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}
