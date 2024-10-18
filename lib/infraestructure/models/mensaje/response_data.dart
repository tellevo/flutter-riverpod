class ResponseData {
  String to;
  String content;
  String countryCode;
  int price;
  int timeStamp;

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
      to: json['to'],
      content: json['content'],
      countryCode: json['country_code'],
      price: json['price'], 
      timeStamp: json['timestamp']
    );
  }
  
  ResponseData({required this.to, required this.content, required this.countryCode, required this.price, required this.timeStamp});
}