import 'package:flutter/material.dart';
import 'package:flutter_application_9_yasamomru/constants.dart';
import 'inputpage.dart';
import 'user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  UserData _user_data;
  ResultPage(this._user_data);
  //const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Hesap hsp = new Hesap(_user_data);
    int yasam_suresi = hsp.hesaplama().round();

    return Scaffold(
      appBar: AppBar(title: Text("Sonuc Sayfasi ")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    "Beklenen Yasam Suresi : $yasam_suresi",
                    style: metinstili,
                  ),
                )),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Geri Don",
                  style: metinstili,
                ),
              ),
            ),
          ]),
    );
  }
}
