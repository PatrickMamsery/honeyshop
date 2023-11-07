class ProductResponse {
  bool? success;
  Product? data;
  String? message;

  ProductResponse({this.success, this.data, this.message});

  ProductResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Product.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Product {
  int? id;
  String? title;
  String? description;
  int? weight;
  String? localBeeKeeper;
  int? price;
  String? organic;

  Product(
      {this.id,
      this.title,
      this.description,
      this.weight,
      this.localBeeKeeper,
      this.price,
      this.organic});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    weight = json['weight'];
    localBeeKeeper = json['local bee keeper'];
    price = json['price'];
    organic = json['organic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['weight'] = this.weight;
    data['local bee keeper'] = this.localBeeKeeper;
    data['price'] = this.price;
    data['organic'] = this.organic;
    return data;
  }
}
