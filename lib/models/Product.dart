class Product {
  final String name;
  final int price;
  final String brand;
  final String image;
  final bool fav;

  Product({this.brand, this.fav, this.name, this.price, this.image});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    brand: json['brand'],
    fav: json['fav'],
    name: json['name'],
    price: json['price'],
    image: json['image']
  );
}