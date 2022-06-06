class Item{
  late int id;
  late String title;
  late String? description;
  late int price;

  Item({
    required this.id,
    required this.title,
    this.description,
    required this.price
  });


}