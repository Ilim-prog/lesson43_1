import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String dollar;
  final String som;
  final String marka;
  final String dvigatel;
  final String age;
  final String kilometr;
  final String text;
  final String city;
  final String time;
  final String photo;

  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.dollar,
    required this.som,
    required this.marka,
    required this.dvigatel,
    required this.age,
    required this.kilometr,
    required this.text,
    required this.city,
    required this.time,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 130,
          height: 160,
          color: Colors.blue[100],
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  imageUrl,
                  width: 125,
                  height: 125,
                ),
                Text(dollar),
                Text(som)
              ],
            ),
          ),
        ),
        Container(
          width: 242,
          height: 160,
          color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                marka,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(dvigatel),
              Text(age),
              Text(kilometr),
              SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(city),
              Row(
                children: [
                  Text(time),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  Text(photo)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
