import 'package:flutter/material.dart';
import 'package:kuis1/disease_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatelessWidget {
  final Diseases plant;
  const HalamanDetail({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: ListView(
        children: [
          Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 4,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Image.network(plant.imgUrls[12])),
          Text(plant.name, style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey),  ),
          SizedBox(height: 20),
          Text(plant.id),
          SizedBox(height: 20),
          Text(plant.name),
          SizedBox(height: 20),
          Text(plant.plantName),
          SizedBox(height: 20),
          Text(plant.symptom),

        ],
      ),
    );
  }}
Future<void> imgUrls(String url) async{
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)){
    throw Exception('Gagal Membuka link :${_url}');
  }
}
