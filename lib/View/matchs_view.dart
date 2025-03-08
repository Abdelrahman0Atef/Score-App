import 'package:flutter/material.dart';
import 'package:score_app/Services/api_services.dart';
import 'package:score_app/Widgets/page_body.dart';

class MatchsView extends StatefulWidget {
  const MatchsView({super.key});

  @override
  State<MatchsView> createState() => _MatchsViewState();
}

class _MatchsViewState extends State<MatchsView> {
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
        future: data.getAllMatches(),
        builder: (context, snapshot) {
          // التأكد من وجود بيانات
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('حدث خطأ: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return pageBody(snapshot.data!);
          } else {
            return const Center(child: Text('لا توجد بيانات.'));
          }
        },
      ),
    );
  }
}
