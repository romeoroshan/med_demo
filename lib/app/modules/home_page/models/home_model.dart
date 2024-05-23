class HomeModel {
  String? status;
  List<Products>? products;

  HomeModel({this.status, this.products});

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? title;
  String? imgUrl;
  String? beforeOfferPrice;
  String? afterOfferPrice;
  int? totalCountReview;
  String? offers;
  double? rating;
  bool? isWishlist;

  Products(
      {this.id,
        this.title,
        this.imgUrl,
        this.beforeOfferPrice,
        this.afterOfferPrice,
        this.totalCountReview,
        this.offers,
        this.rating,
        this.isWishlist});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imgUrl = json['img_url'];
    beforeOfferPrice = json['before_offer_price'];
    afterOfferPrice = json['after_offer_price'];
    totalCountReview = json['total_count_review'];
    offers = json['offers'];
    rating = json['rating'];
    isWishlist = json['is_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['img_url'] = this.imgUrl;
    data['before_offer_price'] = this.beforeOfferPrice;
    data['after_offer_price'] = this.afterOfferPrice;
    data['total_count_review'] = this.totalCountReview;
    data['offers'] = this.offers;
    data['rating'] = this.rating;
    data['is_wishlist'] = this.isWishlist;
    return data;
  }
}
