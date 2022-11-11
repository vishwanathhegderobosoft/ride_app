class BookServiceModel {
  late String mobileNumber;
  late String vehicleType;
  late String vehicleNumber;
  late String serviceType;
  late String comments;
  late String slotDate;
  late String slotTime;
  late String dealer;
  late String city;

  BookServiceModel({
    required this.mobileNumber,
    required this.vehicleType,
    required this.vehicleNumber,
    required this.serviceType,
    required this.slotDate,
    required this.slotTime,
    required this.dealer,
    required this.city,
    required this.comments,
  });

  Map toJson() {
    return {
      'mobileNumber': mobileNumber,
      'vehicleType': vehicleType,
      'vehicleNumber': vehicleNumber,
      'serviceType': serviceType,
      'slotDate': slotDate,
      'slotTime': slotTime,
      'city': city,
      'dealer': dealer,
      'comments': comments,
    };
  }

  toList() {
    return [
      mobileNumber,
      vehicleType,
      vehicleNumber,
      serviceType,
      comments,
      slotDate,
      slotTime,
      city,
      dealer
    ];
  }

  BookServiceModel.fromJson(Map json) {
    mobileNumber = json['mobileNumber'];
    vehicleType = json['vehicleType'];
    vehicleNumber = json['vehicleNumber'];
    serviceType = json['serviceType'];
    comments = json['comments'];
    slotDate = json['slotDate'];
    slotTime = json['slotTime'];
    city = json['city'];
    dealer = json['dealer'];
  }
}
