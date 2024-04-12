class PageThreeModel {
  final List<String> items;

  PageThreeModel({required this.items});

  factory PageThreeModel.fromJson(Map<String, dynamic> json) {
    return PageThreeModel(
      items: List<String>.from(
        json['page3'],
      ),
    );
  }
}
