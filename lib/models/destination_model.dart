import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  // inisialisasi variable
  final String id;
  final String name;
  final String country;
  final String imageUrl;
  final double rating;
  final int price;

  const DestinationModel({
    required this.id,
    this.name = '',
    this.country = '',
    this.imageUrl = '',
    this.rating = 0.0,
    // required this.rating,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        country: json['country'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
      );

  Map<String, dynamic> toJson() => {
    'id':id,
    'name':name,
    'country':country,
    'imageUrl':imageUrl,
    'rating':rating,
    'price':price,
  };

  @override
  List<Object?> get props => [
        id,
        name,
        country,
        imageUrl,
        rating,
        price,
      ];
}
