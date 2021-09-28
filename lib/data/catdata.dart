import 'dart:convert';

class CatData {
  static List<CatalogData> catlogData = [];
}

class CatalogData {
  final String catImg;
  final String onDuty;
  final String catName;

  CatalogData({
   required this.catImg,
   required this.onDuty,
   required this.catName,
  });

  CatalogData copyWith({
    String? catImg,
    String? onDuty,
    String? catName,
  }) {
    return CatalogData(
      catImg: catImg ?? this.catImg,
      onDuty: onDuty ?? this.onDuty,
      catName: catName ?? this.catName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'catImg': catImg,
      'onDuty': onDuty,
      'catName': catName,
    };
  }

  factory CatalogData.fromMap(Map<String, dynamic> map) {
    return CatalogData(
      catImg: map['catImg'],
      onDuty: map['onDuty'],
      catName: map['catName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CatalogData.fromJson(String source) => CatalogData.fromMap(json.decode(source));

  @override
  String toString() => 'CatalogData(catImg: $catImg, onDuty: $onDuty, catName: $catName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CatalogData &&
      other.catImg == catImg &&
      other.onDuty == onDuty &&
      other.catName == catName;
  }

  @override
  int get hashCode => catImg.hashCode ^ onDuty.hashCode ^ catName.hashCode;
}
