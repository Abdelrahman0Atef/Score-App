import 'package:flutter/material.dart';
import 'package:score_app/Services/api_services.dart';
import 'package:score_app/Widgets/page_body.dart';

class MatchsView extends StatelessWidget {
  const MatchsView({super.key});

  @override
  Widget build(BuildContext context) {
    ApiServices data = ApiServices();
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        title: const Text(
          'Score Dashboard',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: ApiServices().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return pageBody(snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
