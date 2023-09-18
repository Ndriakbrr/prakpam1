import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrange,
  ),
  home: DataKelompok(),
));

class DataKelompok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anggota Kelompok"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ListTile(
              leading: CircleAvatar(child:
              Text('MAA'),
                backgroundColor: Colors.pink,
                foregroundColor: Colors.black,
              ),
              title: Text('Muhammad Andri Akbar')
          ),
          ListTile(
              leading: CircleAvatar(child:
              Text('RH'),
                backgroundColor: Colors.pink,
                foregroundColor: Colors.black,
              ),
              title: Text('Rifqi Hafizh')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kalkulator()),
                );
              },
              child: Text(
                "Kalkulator",
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink, // Background color
                onPrimary: Colors.black,
                shape: StadiumBorder(),
              ))
        ],
      ),
    );
  }
}

class Kalkulator extends StatefulWidget {
  @override
  _Kalkulator createState() => _Kalkulator();
}

class _Kalkulator extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  String resultText = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kalkulator"),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Kalkulator',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset: Offset(2, 2)
                        )
                      ]),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: angka1,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                      BorderSide(width: 3, color: Colors.pink)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: 'Masukkan Angka',
                  floatingLabelStyle: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: angka2,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                      BorderSide(width: 3, color: Colors.deepPurpleAccent)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: 'Masukkan Angka',
                  floatingLabelStyle: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: ElevatedButton(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 32),
                      ),
                      onPressed: () {
                        setState(() {
                          int result =
                              int.parse(angka1.text) + int.parse(angka2.text);
                          resultText = result.toString();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Background color
                        onPrimary: Colors.white,
                        shape: StadiumBorder(),
                      )),
                ),
                Container(
                  height: 50,
                  width: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: ElevatedButton(
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontSize: 29, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {
                        setState(() {
                          int result =
                              int.parse(angka1.text) - int.parse(angka2.text);
                          resultText = result.toString();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Background color
                        onPrimary: Colors.white,
                        shape: StadiumBorder(),
                      )),
                ),
                Container(
                  height: 50,
                  width: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: ElevatedButton(
                      child: Text(
                        'x',
                        style: TextStyle(fontSize: 32),
                      ),
                      onPressed: () {
                        setState(() {
                          int result =
                              int.parse(angka1.text) * int.parse(angka2.text);
                          resultText = result.toString();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Background color
                        onPrimary: Colors.white,
                        shape: StadiumBorder(),
                      )),
                ),
                Container(
                  height: 50,
                  width: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: ElevatedButton(
                      child: Text(
                        ':',
                        style: TextStyle(
                            fontSize: 29, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {
                        setState(() {
                          int result =
                              int.parse(angka1.text) ~/ int.parse(angka2.text);
                          resultText = result.toString();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Background color
                        onPrimary: Colors.white,
                        shape: StadiumBorder(),
                      )),
                ),
                Container(
                  height: 50,
                  width: 70,
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: ElevatedButton(
                      child: Text(
                        'C',
                        style: TextStyle(
                            fontSize: 29, fontWeight: FontWeight.w900),
                      ),
                      onPressed: () {
                        setState(() {
                          resultText = '0';
                          angka1.text = '';
                          angka2.text = '';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[900], // Background color
                        onPrimary: Colors.white,
                        shape: StadiumBorder(),
                      )),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: SizedBox(
                  height: 50,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        resultText,
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  )),
            ),
          ],
        ));
  }
}