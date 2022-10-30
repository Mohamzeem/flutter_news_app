import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlesTextsWidget extends StatelessWidget {
  const ArticlesTextsWidget({
    Key? key,
    required this.title,
    required this.date,
    required this.urlComing,
  }) : super(key: key);

  final String title;
  final String date;
  final String urlComing;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(urlComing);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Get.textTheme.displayLarge,
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // Get.to(() => WebShowScreen());
                  launchUrl(
                    url,
                    mode: LaunchMode.platformDefault,
                  );
                },
                child: Text(
                  'More info >>',
                  style: Get.textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                date,
                style: Get.textTheme.displayMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
