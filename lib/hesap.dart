import 'package:flutter_application_9_yasamomru/user_data.dart';

class Hesap {
  UserData _user;
  Hesap(this._user);
  //tamamen sallamasyon bir hesaplama cesidi
  double hesaplama() {
    double sonuc;
    sonuc = 90 + _user.getSpor() - _user.getSigara();
    sonuc = sonuc + _user.getBoy() / _user.getKilo();
    sonuc = _user.getCinsiyet() == "KADIN" ? sonuc + 3 : sonuc - 15;
    return sonuc;
  }
}
