import 'dart:ffi';
import 'dart:io';
import 'result_page.dart';
import 'user_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_9_yasamomru/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'kadin_erkek.dart';
import 'mywidget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String cinsiyet = "";
  double icilenSigara = 0.0;
  double spor = 0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Expanded(
                child: MyWidget(
                  child: builRowOutlinedButton("BOY"),
                ),
              ),
              Expanded(
                child: MyWidget(
                  child: builRowOutlinedButton("KILO"),
                ),
              ),
            ]),
          ),
          Expanded(
            child: MyWidget(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Haftada Kac Gun Spor Yapiyorsun?", style: metinstili),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      spor.round().toString(),
                      style: sayistili,
                    ),
                    Slider(
                      min: 0,
                      max: 7,
                      value: spor,
                      onChanged: (double newValue) {
                        setState(() {
                          spor = newValue;
                        });
                      },
                      divisions: 7,
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: MyWidget(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        textAlign: TextAlign.center,
                        "Gunde Kac Sigara Iciyorsun",
                        style: metinstili),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        icilenSigara.round().toString(),
                        style: sayistili),
                    Slider(
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      },
                      divisions: 30,
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      cinsiyet = "KADIN";
                    });
                  },
                  child: MyWidget(
                    renk: cinsiyet == "KADIN"
                        ? Color.fromARGB(255, 187, 146, 167)
                        : Colors.white,
                    child: kadin_erkek(
                      FontAwesomeIcons.venus,
                      "KADIN",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      cinsiyet = "ERKEK";
                    });
                  },
                  child: MyWidget(
                    renk: cinsiyet == "ERKEK"
                        ? Color.fromARGB(255, 187, 146, 167)
                        : Colors.white,
                    child: kadin_erkek(
                      FontAwesomeIcons.mars,
                      "ERKEK",
                    ),
                  ),
                ),
              )
            ]),
          ),
          ButtonTheme(
            child: FlatButton(
              height: 50,
              color: Colors.white,
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(UserData(
                              kilo: kilo,
                              boy: boy,
                              icilenSigara: icilenSigara,
                              cinsiyet: cinsiyet,
                              spor: spor))));
                });
              },
              child: Text(
                "HESAPLA",
                style: metinstili,
              ),
            ),
          )
        ]),
      ),
    );
  }

  Row builRowOutlinedButton(String txt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(quarterTurns: 3, child: Text(txt, style: metinstili)),
        SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            txt == "BOY" ? boy.toString() : kilo.toString(),
            style: sayistili,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  side: BorderSide(width: 1, color: Colors.grey)),
              onLongPress: () {
                //uzun sure basildiginda
                setState(() {
                  txt == "BOY" ? boy = boy + 10 : kilo = kilo + 10;
                });
              },
              onPressed: () {
                setState(() {
                  txt == "BOY" ? boy++ : kilo++;
                });
              }, //bas cek yapildiginda
              child: Icon(
                FontAwesomeIcons.plus,
                size: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                //button theme de kullanilabilirdi
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    side: BorderSide(width: 1, color: Colors.grey)),
                onPressed: () {
                  setState(() {
                    txt == "BOY" ? boy-- : kilo--;
                  });
                },
                onLongPress: () {
                  setState(() {
                    txt == "BOY" ? boy = boy - 10 : kilo = kilo - 10;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 20,
                ))
          ],
        )
      ],
    );
  }
}
