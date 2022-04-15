import 'package:flutter/material.dart';

import 'profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          title: const Text(
            'Pragmatic',
            style: TextStyle(
                fontFamily: "FontPoppins",
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color.fromARGB(255, 117, 20, 0)),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle,
                  size: 30, color: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            // ignore: sized_box_for_whitespace
            child: Container(
          height: 800,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 109, 13, 13),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        "Cari game yang anda sukai",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Pilih Game',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(style: BorderStyle.none),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ])),
              Container(
                  margin:
                      const EdgeInsets.only(left: 50.0, top: 30.0, right: 50.0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Pilihan Game",
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(
                        flex: 8,
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                            fontFamily: "FontPoppins",
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )),
              Container(
                height: 200,
                margin:
                    const EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    sport('Gate of Oplympus', 'assets/goo.png'),
                    const SizedBox(width: 20),
                    sport('Wild West Gold', 'assets/wwg.png'),
                  ],
                ),
              ),
              //
            ],
          ),
        )));
  }

  Divider divider(double p) {
    return Divider(
      height: 0,
      thickness: p,
      indent: 10,
      endIndent: 20,
      color: const Color.fromARGB(255, 109, 13, 13),
    );
  }

  Container sport(String text, image) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          border: Border.all(
            color: const Color.fromARGB(255, 109, 13, 13),
            width: 2,
          )),
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.cover, width: 200, height: 150),
          Text(text,
              style: const TextStyle(
                  fontFamily: "FontPoppins",
                  fontSize: 35,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
