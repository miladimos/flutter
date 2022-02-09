import 'dart:convert';

class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.off,
    required this.note,
    required this.image,
  });

  late int id;
  late  String name;
  late double price;
  late double off;
  late String note;
  late String image;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    name: json["name"],
    price: json["price"].toDouble(),
    off: json["off"].toDouble(),
    note: json["note"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "off": off,
    "note": note,
    "image": image,
  };

  static Future<List<ProductModel>> loadData() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return [
        ProductModel(id: 1, name: "Mobile Galaxy", price: 100000, off: 0.4, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 2, name: "Mobile Galaxy", price: 200000, off: 0.2, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 3, name: "Mobile Galaxy", price: 300000, off: 0.1, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 4, name: "Mobile Galaxy", price: 400000, off: 0, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 5, name: "Mobile Galaxy", price: 10000, off: 0.7, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 6, name: "Mobile Galaxy", price: 250000, off: 0.1, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 7, name: "Mobile Galaxy", price: 350000, off: 0.2, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 8, name: "Mobile Galaxy", price: 42000, off: 0.4, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 9, name: "Mobile Galaxy", price: 110000, off: 0.4, note: "This is good", image: "https://picsum.photos/536/354"),
        ProductModel(id: 10, name: "Mobile Galaxy", price: 120000, off: 0.4, note: "This is good", image: "https://picsum.photos/536/354"),
      ];
    });
  }
}
