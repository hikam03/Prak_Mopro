import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
            'Akun',
            style: TextStyle(
                fontFamily: "FontPoppins",
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color.fromARGB(255, 109, 13, 13)),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: Center(
          child: Column(children: <Widget>[
            const Padding(padding: EdgeInsets.only(bottom: 40.0)),
            const CircleAvatar(
                radius: 50, backgroundImage: AssetImage('assets/hikam00.png')),
            const Text(
              'Muhammad Nurhikam Maulana',
              style: TextStyle(
                  fontFamily: "FontPoppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 109, 13, 13),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "No Whatsapp",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Spacer(
                      flex: 8,
                    ),
                    Text("08961997727",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 14,
                    ),
                  ],
                )),
            divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 109, 13, 13)),
              child: Row(children: const <Widget>[
                Text(
                  "Alamat",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(
                  flex: 8,
                ),
                Text("Bogor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            ),
            divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 109, 13, 13)),
              child: Row(children: const <Widget>[
                Text(
                  "Umur",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(
                  flex: 8,
                ),
                Text("22 Thn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            ),
            divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 109, 13, 13),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(children: const <Widget>[
                Spacer(
                  flex: 8,
                ),
                Text(
                  "Edit / Tambahkan Info Profil    ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 25,
                ),
              ]),
            ),
          ]),
        ));
  }

  Divider divider() {
    return const Divider(
      height: 0,
      thickness: 1,
      indent: 40,
      endIndent: 40,
      color: Colors.white,
    );
  }
}

Divider divider2() {
  return const Divider(
    height: 0,
    thickness: 2,
    indent: 40,
    endIndent: 40,
    color: Color.fromARGB(255, 109, 13, 13),
  );
}

Container pilihlapangan(String text) {
  return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color.fromARGB(255, 109, 13, 13),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "FontPoppins",
              fontSize: 15,
              fontWeight: FontWeight.w700,
            )),
      ));
}
