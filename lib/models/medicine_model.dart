import 'Date.dart';

class MedicineModel {
  final int id;
  final String scientificName;
  final String commercialName;
  final String category;
  final String factory;
  final int quantity;
  final double price;
  final Date expirationDate;
  bool favourite = false;
  MedicineModel({
    required this.id,
    required this.scientificName,
    required this.commercialName,
    required this.category,
    required this.factory,
    required this.quantity,
    required this.price,
    required this.expirationDate,
  });

  factory MedicineModel.fromJson(Map<String, dynamic> json) {
    return MedicineModel(
      category: json['category'],
      commercialName: json['commercialName'],
      expirationDate: Date(
          year: json['expirationDate']['year'],
          month: json['expirationDate']['month'],
          day: json['expirationDate']['year']),
      factory: json['factory'],
      id: json['id'],
      price: json['price'],
      quantity: json['quantity'],
      scientificName: json['scientificName'],
    );
  }
}
