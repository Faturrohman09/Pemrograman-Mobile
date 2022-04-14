class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;
  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);
  static List<Clothes>generatorClothes(){
    return[
          Clothes(
                  'Gucci oversize',
                  'Hoodie', 
                  'Rp. 1.500.000',
                  'assets/images/arrival1.png',
                  ['assets/images/arrival1.png', 'assets/images/detail2.png']
                  ),
          Clothes(
                  'Man coat',
                  'Rain-Jacket', 
                  'Rp. 1.000.000',
                  'assets/images/arrival2.png',
                  ['assets/images/arrival2.png', 'assets/images/detail3.png']
                  ),
    ];
  } 
}
