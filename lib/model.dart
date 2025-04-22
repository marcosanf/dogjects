class Dog {
  String? message;
  String? status;

  Dog({this.message, this.status});

  Dog.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}