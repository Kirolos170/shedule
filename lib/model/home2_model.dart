class homemodel2 {
  String? title;
  int? spots;
  int? price;
  String? date;
 String? placeName;


  homemodel2({this.title, this.spots, this.price, this.date, this.placeName});

  homemodel2.fromJson(Map<String, dynamic> json) {
    title = json['title'];

    spots = json['spots'];
    price = json['price'];
    placeName=json['placeName'];
  }
}