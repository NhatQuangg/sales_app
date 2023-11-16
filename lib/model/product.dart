import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  int id;
  String title;
  String image;
  int price;
  String description;
  Rating rating;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );
  }


  static Future<List<Product>> fetData() async {
    var url = 'http://localhost:3000/products';
    var response = await http.get(Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var content = response.body;        // body chính là các photos
      var jsons = jsonDecode(content);     // giải mã đối tượng jsons
      var lsProduct = jsons.map<Product>((e) {
        return Product.fromJson(e);
      }).toList();
      return lsProduct;
    }
    else {
      throw new Exception("Loi lay du lieu product");
    }
  }
}

class Rating {
  int rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'] as int,
      count: json['count'] as int,
    );
  }

}
