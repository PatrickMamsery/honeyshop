class OrderResponse {
  bool? success;
  Order? data;
  String? message;

  OrderResponse({this.success, this.data, this.message});

  OrderResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Order.fromJson(json['data']) : null;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    data['amount'] = this.amount;
    data['project'] = this.project;
    return data;
  }
}
