// To parse this JSON data, do
//
//     final saleProductModel = saleProductModelFromJson(jsonString);

import 'dart:convert';

List<SaleProductModel> saleProductModelFromJson(String str) => List<SaleProductModel>.from(json.decode(str).map((x) => SaleProductModel.fromJson(x)));

String saleProductModelToJson(List<SaleProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SaleProductModel {
  SaleProductModel({
    required this.id,
    required this.code,
    required this.name,
    required this.price,
    required this.images,
    required this.categories,
    required this.pk,
    required this.whitePrice,
    required this.markers,
    required this.visible,
    required this.numbersOfPieces,
    required this.sale,
    required this.sellingAttributes,
    required this.variantSizes,
    required this.swatches,
    required this.articleCodes,
    required this.ticket,
    required this.searchEngineProductId,
    required this.dummy,
    required this.linkPdp,
    required this.categoryName,
    required this.rgbColors,
    required this.articleColorNames,
    required this.ecoTaxValue,
    required this.swatchesTotal,
    required this.showPriceMarker,
    required this.redirectToPdp,
    required this.mainCategoryCode,
    required this.comingSoon,
    required this.rating,
  });

  Id id;
  String code;
  String name;
  Price price;
  List<Pic> images;
  List<String> categories;
  String pk;
  Price whitePrice;
  List<Marker> markers;
  bool visible;
  EcoTaxValue numbersOfPieces;
  bool sale;
  List<dynamic> sellingAttributes;
  List<VariantSize> variantSizes;
  List<dynamic> swatches;
  List<String> articleCodes;
  String ticket;
  String searchEngineProductId;
  bool dummy;
  String linkPdp;
  String categoryName;
  List<String> rgbColors;
  List<String> articleColorNames;
  EcoTaxValue ecoTaxValue;
  EcoTaxValue swatchesTotal;
  bool showPriceMarker;
  bool redirectToPdp;
  String mainCategoryCode;
  bool comingSoon;
  Rating rating;

  factory SaleProductModel.fromJson(Map<String, dynamic> json) => SaleProductModel(
    id: Id.fromJson(json["_id"]),
    code: json["code"],
    name: json["name"],
    price: Price.fromJson(json["price"]),
    images: List<Pic>.from(json["images"].map((x) => Pic.fromJson(x))),
    categories: List<String>.from(json["categories"].map((x) => x)),
    pk: json["pk"],
    whitePrice: Price.fromJson(json["whitePrice"]),
    markers: List<Marker>.from(json["markers"].map((x) => Marker.fromJson(x))),
    visible: json["visible"],
    numbersOfPieces: EcoTaxValue.fromJson(json["numbersOfPieces"]),
    sale: json["sale"],
    sellingAttributes: List<dynamic>.from(json["sellingAttributes"].map((x) => x)),
    variantSizes: List<VariantSize>.from(json["variantSizes"].map((x) => VariantSize.fromJson(x))),
    swatches: List<dynamic>.from(json["swatches"].map((x) => x)),
    articleCodes: List<String>.from(json["articleCodes"].map((x) => x)),
    ticket: json["ticket"],
    searchEngineProductId: json["searchEngineProductId"],
    dummy: json["dummy"],
    linkPdp: json["linkPdp"],
    categoryName: json["categoryName"],
    rgbColors: List<String>.from(json["rgbColors"].map((x) => x)),
    articleColorNames: List<String>.from(json["articleColorNames"].map((x) => x)),
    ecoTaxValue: EcoTaxValue.fromJson(json["ecoTaxValue"]),
    swatchesTotal: EcoTaxValue.fromJson(json["swatchesTotal"]),
    showPriceMarker: json["showPriceMarker"],
    redirectToPdp: json["redirectToPdp"],
    mainCategoryCode: json["mainCategoryCode"],
    comingSoon: json["comingSoon"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id == null ? null : id.toJson(),
    "code": code == null ? null : code,
    "name": name == null ? null : name,
    "price": price == null ? null : price.toJson(),
    "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toJson())),
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x)),
    "pk": pk == null ? null : pk,
    "whitePrice": whitePrice == null ? null : whitePrice.toJson(),
    "markers": markers == null ? null : List<dynamic>.from(markers.map((x) => x.toJson())),
    "visible": visible == null ? null : visible,
    "numbersOfPieces": numbersOfPieces == null ? null : numbersOfPieces.toJson(),
    "sale": sale == null ? null : sale,
    "sellingAttributes": sellingAttributes == null ? null : List<dynamic>.from(sellingAttributes.map((x) => x)),
    "variantSizes": variantSizes == null ? null : List<dynamic>.from(variantSizes.map((x) => x.toJson())),
    "swatches": swatches == null ? null : List<dynamic>.from(swatches.map((x) => x)),
    "articleCodes": articleCodes == null ? null : List<dynamic>.from(articleCodes.map((x) => x)),
    "ticket": ticket == null ? null : ticket,
    "searchEngineProductId": searchEngineProductId == null ? null : searchEngineProductId,
    "dummy": dummy == null ? null : dummy,
    "linkPdp": linkPdp == null ? null : linkPdp,
    "categoryName": categoryName == null ? null : categoryName,
    "rgbColors": rgbColors == null ? null : List<dynamic>.from(rgbColors.map((x) => x)),
    "articleColorNames": articleColorNames == null ? null : List<dynamic>.from(articleColorNames.map((x) => x)),
    "ecoTaxValue": ecoTaxValue == null ? null : ecoTaxValue.toJson(),
    "swatchesTotal": swatchesTotal == null ? null : swatchesTotal.toJson(),
    "showPriceMarker": showPriceMarker == null ? null : showPriceMarker,
    "redirectToPdp": redirectToPdp == null ? null : redirectToPdp,
    "mainCategoryCode": mainCategoryCode == null ? null : mainCategoryCode,
    "comingSoon": comingSoon == null ? null : comingSoon,
    "rating": rating == null ? null : rating.toJson(),
  };
}

class EcoTaxValue {
  EcoTaxValue({
    required this.numberInt,
  });

  String numberInt;

  factory EcoTaxValue.fromJson(Map<String, dynamic> json) => EcoTaxValue(
    numberInt: json["\u0024numberInt"] == null ? null : json["\u0024numberInt"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024numberInt": numberInt == null ? null : numberInt,
  };
}

class Id {
  Id({
    required this.oid,
  });

  String oid;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    oid: json["\u0024oid"] == null ? null : json["\u0024oid"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024oid": oid == null ? null : oid,
  };
}

class Pic {
  Pic({
   required this.url,
  });

  String url;

  factory Pic.fromJson(Map<String, dynamic> json) => Pic(
    url: json["url"] == null ? null : json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
  };
}

class Marker {
  Marker({
    required this.text,
    required this.type,
  });

  String text;
  String type;

  factory Marker.fromJson(Map<String, dynamic> json) => Marker(
    text: json["text"] == null ? null : json["text"],
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "text": text == null ? null : text,
    "type": type == null ? null : type,
  };
}

class Price {
  Price({
    required this.currencyIso,
    required this.value,
    required this.priceType,
    required this.formattedValue,
    required this.type,
  });

  String currencyIso;
  Value value;
  String priceType;
  String formattedValue;
  String type;

  factory Price.fromJson(Map<String, dynamic> json) => Price(

    currencyIso: json["currencyIso"],
    value: Value.fromJson(json["value"]),
    priceType: json["priceType"],
    formattedValue: json["formattedValue"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "currencyIso": currencyIso == null ? null : currencyIso,
    "value": value == null ? null : value.toJson(),
    "priceType": priceType == null ? null : priceType,
    "formattedValue": formattedValue == null ? null : formattedValue,
    "type": type == null ? null : type,
  };
}

class Value {
  Value({
   required this.numberDouble,
  });

  double numberDouble;

  factory Value.fromJson(Map<dynamic, dynamic> json) => Value(
    numberDouble: double.parse( json["\u0024numberDouble"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "\u0024numberDouble": numberDouble   };
}

class Rating {
  Rating({
   required this.rate,
   required this.count,
  });

  Value rate;
  EcoTaxValue count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: Value.fromJson(json["rate"]),
    count: EcoTaxValue.fromJson(json["count"]),
  );

  Map<String, dynamic> toJson() => {
    "rate": rate == null ? null : rate.toJson(),
    "count": count == null ? null : count.toJson(),
  };
}

class VariantSize {
  VariantSize({
   required this.orderFilter,
   required this.filterCode,
  });

  EcoTaxValue orderFilter;
  String filterCode;

  factory VariantSize.fromJson(Map<String, dynamic> json) => VariantSize(
    orderFilter: EcoTaxValue.fromJson(json["orderFilter"]),
    filterCode: json["filterCode"],
  );

  Map<String, dynamic> toJson() => {
    "orderFilter": orderFilter == null ? null : orderFilter.toJson(),
    "filterCode": filterCode == null ? null : filterCode,
  };
}
