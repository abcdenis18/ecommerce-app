class NewProduct {
  final String name;
  final String image;
  final double price;
  final int count;

  NewProduct({this.image, this.count, this.name, this.price});

  factory NewProduct.fromJson(Map<String, dynamic> json) => NewProduct(
    count: json['count'],
    image: json['image'],
    price: json['price'],
    name: json['name'],
  );
}