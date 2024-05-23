class NumberData{
  String num;
  NumberData({required this.num});
  Map<String,dynamic> toJson(){
    return {
      'num':num
    };
  }
  factory NumberData.fromJson(Map<String,dynamic> json){
    return NumberData(num: json['num']);
  }
}