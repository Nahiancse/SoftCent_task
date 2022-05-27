class SecondPage_Model {
  bool? success;
  Single_Restraunt? data;

  SecondPage_Model({this.success, this.data});

  SecondPage_Model.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Single_Restraunt.fromJson(json['data']) : null;
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

class Single_Restraunt {
   
  String? image;
   
  String? businessname;
   

  Single_Restraunt(
      { 
      this.image,
      
      this.businessname,
       });

  Single_Restraunt.fromJson(Map<String, dynamic> json) {
     
    image = json['image'];
     
    businessname = json['businessname'];
     
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
     
    data['image'] = this.image;
     
    data['businessname'] = this.businessname;
     
     
    return data;
  }
}
