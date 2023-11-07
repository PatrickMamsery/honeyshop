class ProjectsResponse {
  bool? success;
  List<Project>? data;
  String? message;

  ProjectsResponse({this.success, this.data, this.message});

  ProjectsResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Project>[];
      json['data'].forEach((v) {
        data!.add(new Project.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Project {
  int? id;
  String? title;
  int? price;
  int? rating;
  String? image;

  Project({this.id, this.title, this.price, this.rating, this.image});

  Project.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    rating = json['rating'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['image'] = this.image;
    return data;
  }
}
