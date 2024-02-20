import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../hadith_details_page/hadisDetalis.dart';

class DetailPage extends StatelessWidget {
  final String item;

  DetailPage({super.key, required this.item});

  final List<String> items2 = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hadis book Name',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text("2424234 ti")
          ],
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: items2.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HadithDetalis(
                                item2: items2[index],
                              )));
                },
                title: const Text("bukhari"),
                subtitle: const Text("Hadis range: 1-4"),
              ),
            );
          },
        ),
      ),
    );
  }
}
