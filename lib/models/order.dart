class Order{
  String imageUrl;
  String name;
  String year;
  String type;
  String capacity;
  String machinism;
  String petrol;
  String city;
  String cost;
  String uzatma;
  String color;
  String info;
  String date;
  Order(this.imageUrl, this.name, this.year, this.type, this.capacity, this.machinism, this.petrol,
      this.city, this.cost, this.uzatma, this.color, this.info, this.date );


  static List<Order>orders=[
    Order("assets/images/gentra.jpg", "Chevrolet gentra", "2021", "sedan",
      "1.5", "avtamot", "benzin", "tashkent","11000","avtomat", "oq",
        "bir qo'l faqat ishga borib kelishga minilgan", "07.12.2021"),
    Order("assets/images/cobalt.jpg", "Chevrolet cobalt", "2021", "sedan",
        "1.5", "avtamot", "benzin", "tashkent","11000","avtomat", "oq",
        "bir qo'l faqat ishga borib kelishga minilgan", "07.12.2021"),
    Order("assets/images/gentra2.jpg", "Chevrolet gentra", "2021", "sedan",
        "1.5", "avtamot", "benzin", "tashkent","11000","avtomat", "oq",
        "bir qo'l faqat ishga borib kelishga minilgan", "07.12.2021"),
    Order("assets/images/cobalt2.jpg", "Chevrolet Cobalt", "2021", "sedan",
        "1.5", "avtamot", "benzin", "tashkent","11000","avtomat", "oq",
        "bir qo'l faqat ishga borib kelishga minilgan", "07.12.2021"),
    Order("assets/images/matiz.jpg", "Daewoo matiz", "2021", "sedan",
        "1.5", "avtamot", "benzin", "tashkent","11000","avtomat", "oq",
        "bir qo'l faqat ishga borib kelishga minilgan", "07.12.2021"),
  ];
}