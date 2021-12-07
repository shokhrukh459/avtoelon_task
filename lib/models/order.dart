class Order{
  String imageUrl;
  String name;
  String info;
  String date;
  Order(this.imageUrl, this.name, this.info, this.date);


  static List<Order>orders=[
    Order("assets/images/gentra.jpg", "Chevrolet gentra", "2021, Full avtomat, benzin ", "04.12.2021"),
    Order("assets/images/cobalt.jpg", "Chevrolet cobalt", "2020, Mexanika, metan", "02.12.2021"),
    Order("assets/images/gentra2.jpg", "Chevrolet gentra", "2017, Mexanika, propan", "01.12.2021"),
    Order("assets/images/cobalt2.jpg", "Chevrolet Cobalt", "2020, Full avtomat, benzin", "01.12.2021"),
    Order("assets/images/matiz.jpg", "Daewoo matiz", "2011, Mexanika, propan", "29.11.2021"),
  ];
}