import 'package:flutter/material.dart';
import 'package:flutter_slicing/komponen/komponen_ui_1.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,

                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.pinkAccent,
                    Colors.pinkAccent,
                    Colors.pinkAccent,
                    Colors.pinkAccent,
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Mau makan apa hari ini ?',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: [
                      Text(
                        "Menu Favorit Anda,\nSendiri atau Barengan",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/fastfood.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KomponenUi1(
                        logo: "assets/burger.png",
                        title: "Diskon Terus",
                      ),
                      KomponenUi1(
                        logo: "assets/store.png",
                        title: "Resto Terdekat",
                      ),
                      KomponenUi1(
                        logo: "assets/orangejuice.png",
                        title: "Minuman ",
                      ),
                      KomponenUi1(
                        logo: "assets/vegetables.png",
                        title: "Makanan  Sehat",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
