import 'dart:convert';

class DoctorCatalog {
  static List<ApiData> doctors = [];
}

class ApiData {
  final String img;
  final String name;
  final String drDesc;
  final String rating;
  ApiData({
    required this.img,
    required this.name,
    required this.drDesc,
    required this.rating,
  });

  ApiData copyWith({
    String? img,
    String? name,
    String? drDesc,
    String? rating,
  }) {
    return ApiData(
      img: img ?? this.img,
      name: name ?? this.name,
      drDesc: drDesc ?? this.drDesc,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'img': img,
      'name': name,
      'drDesc': drDesc,
      'rating': rating,
    };
  }

  factory ApiData.fromMap(Map<String, dynamic> map) {
    return ApiData(
      img: map['img'],
      name: map['name'],
      drDesc: map['drDesc'],
      rating: map['rating'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiData.fromJson(String source) =>
      ApiData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApiData(img: $img, name: $name, drDesc: $drDesc, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiData &&
        other.img == img &&
        other.name == name &&
        other.drDesc == drDesc &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return img.hashCode ^ name.hashCode ^ drDesc.hashCode ^ rating.hashCode;
  }
}
