import 'package:flutter/material.dart';

import 'news_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsScreen(
            imgUrl:
                'https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
            newsDesc:
                'Since its launch in October 2022, the telecom operators have deployed 5G network across more than 50 Indian cities including Delhi, Mumbai, Varanasi and more. Airtel and Jio which are currently the only two telecom operators who are offering 5G services, are aiming to launch 5G connection PAN India within 1-2 years',
            newsHeading: '5G Network',
            newsUrl: 'https://www.qualcomm.com/5g/what-is-5g',
          );
        },
      ),
    );
  }
}
