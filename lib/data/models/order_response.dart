class OrderResponse {
  bool? success;
  Order? data;
  String? message;

  OrderResponse({this.success, this.data, this.message});

  OrderResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Order.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class Order {
  int? id;
  String? name;
  int? quantity;
  int? amount;
  int? project;

  Order({this.id, this.name, this.quantity, this.amount, this.project});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    quantity = json['quantity'];
    amount = json['amount'];
    project = json['project'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['quantity'] = quantity;
    data['amount'] = amount;
    data['project'] = project;
    return data;
  }
}
