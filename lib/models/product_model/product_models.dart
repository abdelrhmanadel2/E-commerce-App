// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ProductModels> productModelFromJson(String str) => List<ProductModels>.from(json.decode(str).map((x) => ProductModels.fromJson(x)));

String productModelToJson(List<ProductModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModels {
  ProductModels({
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
  List<Image> images;
  List<String> categories;
  String pk;
  Price whitePrice;
  List<Marker> markers;
  bool visible;
  EcoTaxValue numbersOfPieces;
  bool sale;
  List<SellingAttribute> sellingAttributes;
  List<VariantSize> variantSizes;
  List<dynamic> swatches;
  List<String> articleCodes;
  String ticket;
  String searchEngineProductId;
  bool dummy;
  String linkPdp;
  CategoryName categoryName;
  List<String> rgbColors;
  List<String> articleColorNames;
  EcoTaxValue ecoTaxValue;
  EcoTaxValue swatchesTotal;
  bool showPriceMarker;
  bool redirectToPdp;
  String mainCategoryCode;
  bool comingSoon;
  Rating rating;

  factory ProductModels.fromJson(Map<String, dynamic> json) => ProductModels(
    id: Id.fromJson(json["_id"]),
    code: json["code"],
    name: json["name"],
    price: Price.fromJson(json["price"]),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    categories: List<String>.from(json["categories"].map((x) => x)),
    pk: json["pk"],
    whitePrice: Price.fromJson(json["whitePrice"]),
    markers: List<Marker>.from(json["markers"].map((x) => Marker.fromJson(x))),
    visible: json["visible"],
    numbersOfPieces: EcoTaxValue.fromJson(json["numbersOfPieces"]),
    sale: json["sale"],
    sellingAttributes: List<SellingAttribute>.from(json["sellingAttributes"].map((x) => sellingAttributeValues.map[x])),
    variantSizes: List<VariantSize>.from(json["variantSizes"].map((x) => VariantSize.fromJson(x))),
    swatches: List<dynamic>.from(json["swatches"].map((x) => x)),
    articleCodes: List<String>.from(json["articleCodes"].map((x) => x)),
    ticket: json["ticket"],
    searchEngineProductId: json["searchEngineProductId"],
    dummy: json["dummy"],
    linkPdp: json["linkPdp"],
    categoryName: categoryNameValues.map[json["categoryName"]]!,
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
    "_id": id.toJson(),
    "code": code,
    "name": name,
    "price": price.toJson(),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => categoryValues.reverse[x])),
    "pk": pk,
    "whitePrice": whitePrice.toJson(),
    "markers": List<dynamic>.from(markers.map((x) => x.toJson())),
    "visible": visible,
    "numbersOfPieces": numbersOfPieces.toJson(),
    "sale": sale,
    "sellingAttributes": List<dynamic>.from(sellingAttributes.map((x) => sellingAttributeValues.reverse[x])),
    "variantSizes": List<dynamic>.from(variantSizes.map((x) => x.toJson())),
    "swatches": List<dynamic>.from(swatches.map((x) => x)),
    "articleCodes": List<dynamic>.from(articleCodes.map((x) => x)),
    "ticket": ticket,
    "searchEngineProductId": searchEngineProductId,
    "dummy": dummy,
    "linkPdp": linkPdp,
    "categoryName": categoryNameValues.reverse[categoryName],
    "rgbColors": List<dynamic>.from(rgbColors.map((x) => x)),
    "articleColorNames": List<dynamic>.from(articleColorNames.map((x) => x)),
    "ecoTaxValue": ecoTaxValue.toJson(),
    "swatchesTotal": swatchesTotal.toJson(),
    "showPriceMarker": showPriceMarker,
    "redirectToPdp": redirectToPdp,
    "mainCategoryCode": mainCategoryCode,
    "comingSoon": comingSoon,
    "rating": rating.toJson(),
  };
}

enum Category { CLOTHES, SHOES, ACCESSORIES }

final categoryValues = EnumValues({
  "accessories": Category.ACCESSORIES,
  "clothes": Category.CLOTHES,
  "shoes": Category.SHOES
});

enum CategoryName { KIDS, LADIES, MEN }

final categoryNameValues = EnumValues({
  "Kids": CategoryName.KIDS,
  "Ladies": CategoryName.LADIES,
  "Men": CategoryName.MEN
});

class EcoTaxValue {
  EcoTaxValue({
    required this.numberInt,
  });

  String numberInt;

  factory EcoTaxValue.fromJson(Map<String, dynamic> json) => EcoTaxValue(
    numberInt: json["\u0024numberInt"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024numberInt": numberInt,
  };
}

class Id {
  Id({
    required this.oid,
  });

  String oid;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    oid: json["\u0024oid"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024oid": oid,
  };
}

class Image {
  Image({
    required this.url,
  });

  String url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class Marker {
  Marker({
    required this.text,
    required this.type,
  });

  Text text;
  MarkerType type;

  factory Marker.fromJson(Map<String, dynamic> json) => Marker(
    text: textValues.map[json["text"]]!,
    type: markerTypeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "text": textValues.reverse[text],
    "type": markerTypeValues.reverse[type],
  };
}

enum Text { PREMIUM_SELECTION, CONSCIOUS, NO_FEAR_X_H_M }

final textValues = EnumValues({
  "Conscious": Text.CONSCIOUS,
  "No Fear x H&M": Text.NO_FEAR_X_H_M,
  "Premium Selection": Text.PREMIUM_SELECTION
});

enum MarkerType { QUALITY, ENVIRONMENT, COLLECTION }

final markerTypeValues = EnumValues({
  "COLLECTION": MarkerType.COLLECTION,
  "ENVIRONMENT": MarkerType.ENVIRONMENT,
  "QUALITY": MarkerType.QUALITY
});

class Price {
  Price({
    required this.currencyIso,
    required this.value,
    required this.priceType,
    required this.formattedValue,
    required this.type,
  });

  CurrencyIso currencyIso;
  Value value;
  PriceTypeEnum priceType;
  String formattedValue;
  PriceType type;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    currencyIso: currencyIsoValues.map[json["currencyIso"]]!,
    value: Value.fromJson(json["value"]),
    priceType: priceTypeEnumValues.map[json["priceType"]]!,
    formattedValue: json["formattedValue"],
    type: priceTypeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "currencyIso": currencyIsoValues.reverse[currencyIso],
    "value": value.toJson(),
    "priceType": priceTypeEnumValues.reverse[priceType],
    "formattedValue": formattedValue,
    "type": priceTypeValues.reverse[type],
  };
}

enum CurrencyIso { SGD }

final currencyIsoValues = EnumValues({
  "SGD": CurrencyIso.SGD
});

enum PriceTypeEnum { BUY }

final priceTypeEnumValues = EnumValues({
  "BUY": PriceTypeEnum.BUY
});

enum PriceType { WHITE }

final priceTypeValues = EnumValues({
  "WHITE": PriceType.WHITE
});

class Value {
  Value({
    required this.numberDouble,
  });

  String numberDouble;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    numberDouble: json["\u0024numberDouble"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024numberDouble": numberDouble,
  };
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
    "rate": rate.toJson(),
    "count": count.toJson(),
  };
}

enum SellingAttribute { NEW_ARRIVAL }

final sellingAttributeValues = EnumValues({
  "New Arrival": SellingAttribute.NEW_ARRIVAL
});

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
    "orderFilter": orderFilter.toJson(),
    "filterCode": filterCode,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
