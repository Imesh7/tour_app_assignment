import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String imageUrl;

  const ExploreCard({
    super.key,
    required this.title,
    required this.imageUrl,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(10),
      shadowColor: Colors.grey,
      elevation: 4,
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.fill, width: 150, height: 150),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(title),
          ),
          if (subtitle != null) Text(subtitle!),
        ],
      ),
    );
  }
}
