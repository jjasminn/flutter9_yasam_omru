class UserData {
  String cinsiyet;
  double icilenSigara;
  double spor;
  int boy;
  int kilo;
  UserData(
      {required this.cinsiyet,
      required this.icilenSigara,
      required this.spor,
      required this.boy,
      required this.kilo});
  String getCinsiyet() {
    return this.cinsiyet;
  }

  double getSigara() {
    return this.icilenSigara;
  }

  int getBoy() {
    return this.boy;
  }

  int getKilo() {
    return this.kilo;
  }

  double getSpor() {
    return this.spor;
  }
}
