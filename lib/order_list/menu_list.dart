// menu_item.dart
class MenuItem {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final double? rating;

  MenuItem({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    this.rating,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MenuItem &&
          runtimeType == other.runtimeType &&
          imagePath == other.imagePath &&
          title == other.title &&
          description == other.description &&
          price == other.price;

  @override
  int get hashCode =>
      imagePath.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode;
}
