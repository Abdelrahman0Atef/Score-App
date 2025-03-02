import 'package:flutter/material.dart';

Widget teamStatue(String team, String urlLogo, String teamName) {
  return Expanded(
      child: Column(
    children: [
      Text(
        team,
        style: const TextStyle(fontSize: 20),
      ),
      const SizedBox(
        height: 10,
      ),
      Expanded(
        child: Image.network(
          urlLogo,
          width: 54,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Expanded(
          child: Text(
        teamName,
        style: const TextStyle(fontSize: 18),
      ))
    ],
  ));
}
