import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final String newsHeading;
  final String imgUrl;
  final String newsDesc;
  final String newsUrl;
  const NewsScreen({
    super.key,
    required this.imgUrl,
    required this.newsHeading,
    required this.newsDesc,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            imgUrl,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsHeading,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  newsDesc,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    print("Going to $newsUrl");
                  },
                  child: const Text("Read More"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
