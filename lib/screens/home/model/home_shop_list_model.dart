/// success : true
/// errorMsg : ""
/// shop_banners : ["20230130121132_download (2).jpg"]
/// shop_types : [{"id":2,"type":"Fashion","image_name":"20230323024624_download (5).jpg"},{"id":3,"type":"Shops","image_name":"20230323024720_download (6).jpg"},{"id":4,"type":"Hardwares& Appliances","image_name":"20230323024812_download (7).jpg"},{"id":5,"type":"Electronics & Electricals","image_name":"20230323024851_images.jpg"},{"id":6,"type":"Automotive","image_name":"20230323083650_Automotive.jpg"}]
/// shop_data : [{"id":1,"name":"vendorshops","phone":"987654356","alternate_phone":"987654367","email":"vendorshoqp@gmail.com","address":"test data","pin_code":"6789876","location":"Kannur,Kerala,India","latitude":"11.8745","longitude":"75.3704","is_active":"1","description":"description","radius":"10","image":"20230210013338_iconepic.png","created_at":"2023-02-13 07:57:52","updated_at":"2023-02-11 16:06:36"},{"id":2,"name":"test shop data","phone":"9876543210","alternate_phone":"9876543210","email":"test@gmail.com","address":"kannue","pin_code":"987655","location":"Kannur, Kerala, India","latitude":"11.8744775","longitude":"75.37036619999999","is_active":"1","description":"test data","radius":"10","image":"20230210013338_iconepic.png","created_at":"2023-02-10 13:33:38","updated_at":"2023-02-10 13:33:38"},{"id":3,"name":"vendorshops","phone":"987654356","alternate_phone":"987654367","email":"vendorshoqp@gmail.com","address":"test data","pin_code":"6789876","location":"Kannur,Kerala,India","latitude":"11.8745","longitude":"75.3704","is_active":"1","description":"description","radius":"20","image":"20230210013338_iconepic.png","created_at":"2023-02-11 10:37:42","updated_at":"2023-02-11 16:07:42"}]

class HomeShopListModel {
  HomeShopListModel({
      bool? success, 
      String? errorMsg, 
      List<String>? shopBanners, 
      List<ShopTypes>? shopTypes, 
      List<ShopData>? shopData,}){
    _success = success;
    _errorMsg = errorMsg;
    _shopBanners = shopBanners;
    _shopTypes = shopTypes;
    _shopData = shopData;
}

  HomeShopListModel.fromJson(dynamic json) {
    _success = json['success'];
    _errorMsg = json['errorMsg'];
    _shopBanners = json['shop_banners'] != null ? json['shop_banners'].cast<String>() : [];
    if (json['shop_types'] != null) {
      _shopTypes = [];
      json['shop_types'].forEach((v) {
        _shopTypes?.add(ShopTypes.fromJson(v));
      });
    }
    if (json['shop_data'] != null) {
      _shopData = [];
      json['shop_data'].forEach((v) {
        _shopData?.add(ShopData.fromJson(v));
      });
    }
  }
  bool? _success;
  String? _errorMsg;
  List<String>? _shopBanners;
  List<ShopTypes>? _shopTypes;
  List<ShopData>? _shopData;
HomeShopListModel copyWith({  bool? success,
  String? errorMsg,
  List<String>? shopBanners,
  List<ShopTypes>? shopTypes,
  List<ShopData>? shopData,
}) => HomeShopListModel(  success: success ?? _success,
  errorMsg: errorMsg ?? _errorMsg,
  shopBanners: shopBanners ?? _shopBanners,
  shopTypes: shopTypes ?? _shopTypes,
  shopData: shopData ?? _shopData,
);
  bool? get success => _success;
  String? get errorMsg => _errorMsg;
  List<String>? get shopBanners => _shopBanners;
  List<ShopTypes>? get shopTypes => _shopTypes;
  List<ShopData>? get shopData => _shopData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['errorMsg'] = _errorMsg;
    map['shop_banners'] = _shopBanners;
    if (_shopTypes != null) {
      map['shop_types'] = _shopTypes?.map((v) => v.toJson()).toList();
    }
    if (_shopData != null) {
      map['shop_data'] = _shopData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "vendorshops"
/// phone : "987654356"
/// alternate_phone : "987654367"
/// email : "vendorshoqp@gmail.com"
/// address : "test data"
/// pin_code : "6789876"
/// location : "Kannur,Kerala,India"
/// latitude : "11.8745"
/// longitude : "75.3704"
/// is_active : "1"
/// description : "description"
/// radius : "10"
/// image : "20230210013338_iconepic.png"
/// created_at : "2023-02-13 07:57:52"
/// updated_at : "2023-02-11 16:06:36"

class ShopData {
  ShopData({
      num? id, 
      String? name, 
      String? phone, 
      String? alternatePhone, 
      String? email, 
      String? address, 
      String? pinCode, 
      String? location, 
      String? latitude, 
      String? longitude, 
      String? isActive, 
      String? description, 
      String? shopType,
      String? radius, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _phone = phone;
    _alternatePhone = alternatePhone;
    _email = email;
    _address = address;
    _pinCode = pinCode;
    _location = location;
    _latitude = latitude;
    _longitude = longitude;
    _isActive = isActive;
    _description = description;
    _shopType = shopType;
    _radius = radius;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  ShopData.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _phone = json['phone'];
    _alternatePhone = json['alternate_phone'];
    _email = json['email'];
    _address = json['address'];
    _pinCode = json['pin_code'];
    _location = json['location'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _isActive = json['is_active'];
    _description = json['description'];
    _shopType = json['shop_type'];
    _radius = json['radius'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _phone;
  String? _alternatePhone;
  String? _email;
  String? _address;
  String? _pinCode;
  String? _location;
  String? _latitude;
  String? _longitude;
  String? _isActive;
  String? _description;
  String? _shopType;
  String? _radius;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
ShopData copyWith({  num? id,
  String? name,
  String? phone,
  String? alternatePhone,
  String? email,
  String? address,
  String? pinCode,
  String? location,
  String? latitude,
  String? longitude,
  String? isActive,
  String? description,
  String? shopType,
  String? radius,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => ShopData(  id: id ?? _id,
  name: name ?? _name,
  phone: phone ?? _phone,
  alternatePhone: alternatePhone ?? _alternatePhone,
  email: email ?? _email,
  address: address ?? _address,
  pinCode: pinCode ?? _pinCode,
  location: location ?? _location,
  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
  isActive: isActive ?? _isActive,
  description: description ?? _description,
  shopType: shopType ?? _shopType,
  radius: radius ?? _radius,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get name => _name;
  String? get phone => _phone;
  String? get alternatePhone => _alternatePhone;
  String? get email => _email;
  String? get address => _address;
  String? get pinCode => _pinCode;
  String? get location => _location;
  String? get latitude => _latitude;
  String? get longitude => _longitude;
  String? get isActive => _isActive;
  String? get description => _description;
  String? get shopType  => _shopType;
  String? get radius => _radius;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['alternate_phone'] = _alternatePhone;
    map['email'] = _email;
    map['address'] = _address;
    map['pin_code'] = _pinCode;
    map['location'] = _location;
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    map['is_active'] = _isActive;
    map['description'] = _description;
    map['shop_type'] = _shopType;
    map['radius'] = _radius;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 2
/// type : "Fashion"
/// image_name : "20230323024624_download (5).jpg"

class ShopTypes {
  ShopTypes({
      num? id, 
      String? type, 
      String? imageName,}){
    _id = id;
    _type = type;
    _imageName = imageName;
}

  ShopTypes.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _imageName = json['image_name'];
  }
  num? _id;
  String? _type;
  String? _imageName;
ShopTypes copyWith({  num? id,
  String? type,
  String? imageName,
}) => ShopTypes(  id: id ?? _id,
  type: type ?? _type,
  imageName: imageName ?? _imageName,
);
  num? get id => _id;
  String? get type => _type;
  String? get imageName => _imageName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image_name'] = _imageName;
    return map;
  }

}