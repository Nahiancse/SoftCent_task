class Single_Res {
  bool? success;
  Data? data;

  Single_Res({this.success, this.data});

  Single_Res.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? reviews;
  bool? parkinglot;
  String? location;
  String? phone;
  int? averagecost;
  String? image;
  String? imageId;
  String? restauranttype;
  String? sId;
  String? businessname;
  String? address;
  String? menu;
  String? slug;
  String? email;
  int? iV;
  List<dynamic>? foodMenu;
  String? id;

  Data(
      {this.reviews,
      this.parkinglot,
      this.location,
      this.phone,
      this.averagecost,
      this.image,
      this.imageId,
      this.restauranttype,
      this.sId,
      this.businessname,
      this.address,
      this.menu,
      this.slug,
      this.email,
      this.iV,
      this.foodMenu,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    reviews = json['reviews'];
    parkinglot = json['parkinglot'];
    location = json['location'];
    phone = json['phone'];
    averagecost = json['averagecost'];
    image = json['image'];
    imageId = json['imageId'];
    restauranttype = json['restauranttype'];
    sId = json['_id'];
    businessname = json['businessname'];
    address = json['address'];
    menu = json['menu'];
    slug = json['slug'];
    email = json['email'];
    iV = json['__v'];
    foodMenu:
    List<dynamic>.from(json["foodMenu"].map((x) => x));
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reviews'] = this.reviews;
    data['parkinglot'] = this.parkinglot;
    data['location'] = this.location;
    data['phone'] = this.phone;
    data['averagecost'] = this.averagecost;
    data['image'] = this.image;
    data['imageId'] = this.imageId;
    data['restauranttype'] = this.restauranttype;
    data['_id'] = this.sId;
    data['businessname'] = this.businessname;
    data['address'] = this.address;
    data['menu'] = this.menu;
    data['slug'] = this.slug;
    data['email'] = this.email;
    data['__v'] = this.iV;
    if (this.foodMenu != null) {
      data['foodMenu'] = this.foodMenu!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}
