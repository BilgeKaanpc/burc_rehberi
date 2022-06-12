

class Burc {
  late String _burcAdi;
  late String _burcTarihi;
  late String _burcDetayi;
  late String _burcKucukResim;
  late String _burcBuyukResim;

  get burcAdi => this._burcAdi;
  get burcTarihi => this._burcTarihi;
  get urcDetayi => this._burcDetayi;
  get burcKucukResim => this._burcKucukResim;
  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi,this._burcTarihi,this._burcDetayi,this._burcKucukResim,this._burcBuyukResim);

  String toString(){
    return '$_burcAdi';
  }

}