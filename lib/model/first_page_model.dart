class FirstPage_Model {
  int? totalRestaurants;
  List<All_Restaurant>? result;

  FirstPage_Model({this.totalRestaurants, this.result});

  FirstPage_Model.fromJson(Map<String, dynamic> json) {
    totalRestaurants = json['Total Restaurants'];
    if (json['Result'] != null) {
      result = <All_Restaurant>[];
      json['Result'].forEach((v) {
        result!.add(new All_Restaurant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total Restaurants'] = this.totalRestaurants;
    if (this.result != null) {
      data['Result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class All_Restaurant {
  
  String? image;
  
  String? businessname;
   
   

  All_Restaurant(
      { 
      this.image,
       
      this.businessname,
      
      });

  All_Restaurant.fromJson(Map<String, dynamic> json) {
     
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
