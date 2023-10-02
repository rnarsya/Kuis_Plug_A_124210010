import 'package:flutter/material.dart';
import 'package:kuis1/halaman_detail.dart';
import 'package:kuis1/disease_data.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant Diseases"),

      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3, //
        ),
        itemCount: listDisease.length,
        itemBuilder: (context, index) {
          final Diseases plant = listDisease[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HalamanDetail(plant: plant);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    child: Image.network(plant.imgUrls),
                  ),
                  SizedBox(height: 10),
                  Text(
                    plant.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
