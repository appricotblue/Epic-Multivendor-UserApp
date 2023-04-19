class ServiceBookingDetailsModel {
  bool? success;
  String? errorMsg;
  BookingData? bookingData;

  ServiceBookingDetailsModel({this.success, this.errorMsg, this.bookingData});

  ServiceBookingDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    errorMsg = json['errorMsg'];
    bookingData = json['booking_data'] != null
        ? new BookingData.fromJson(json['booking_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['errorMsg'] = this.errorMsg;
    if (this.bookingData != null) {
      data['booking_data'] = this.bookingData!.toJson();
    }
    return data;
  }
}

class BookingData {
  int? id;
  String? bookingId;
  String? serviceTitle;
  String? price;
  String? image;
  int? servicePin;
  String? shopName;
  String? shopPhone;
  String? shopAddress;
  String? paymentStatus;
  String? paymentMethod;
  String? userAddress;
  String? userPhone;
  String? userEmail;
  String? bookingStatus;

  BookingData(
      {this.id,
      this.bookingId,
      this.serviceTitle,
      this.price,
      this.image,
      this.servicePin,
      this.shopName,
      this.shopPhone,
      this.shopAddress,
      this.paymentStatus,
      this.paymentMethod,
      this.userAddress,
      this.userPhone,
      this.userEmail,
      this.bookingStatus});

  BookingData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['booking_id'];
    serviceTitle = json['service_title'];
    price = json['price'];
    image = json['image'];
    servicePin = json['service_pin'];
    shopName = json['shop_name'];
    shopPhone = json['shop_phone'];
    shopAddress = json['shop_address'];
    paymentStatus = json['payment_status'];
    paymentMethod = json['payment_method'];
    userAddress = json['user_address'];
    userPhone = json['user_phone'];
    userEmail = json['user_email'];
    bookingStatus = json['booking_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['booking_id'] = this.bookingId;
    data['service_title'] = this.serviceTitle;
    data['price'] = this.price;
    data['image'] = this.image;
    data['service_pin'] = this.servicePin;
    data['shop_name'] = this.shopName;
    data['shop_phone'] = this.shopPhone;
    data['shop_address'] = this.shopAddress;
    data['payment_status'] = this.paymentStatus;
    data['payment_method'] = this.paymentMethod;
    data['user_address'] = this.userAddress;
    data['user_phone'] = this.userPhone;
    data['user_email'] = this.userEmail;
    data['booking_status'] = this.bookingStatus;
    return data;
  }
}