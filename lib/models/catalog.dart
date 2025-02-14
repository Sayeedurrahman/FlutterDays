class CatalogModel{
  static final items = [
    Item(
          id: 1,
          name: "Red Fish",
          desc: "A vibrant red fish that stands out in any aquarium.",
          price: 19.99,
          color: "#FF5733",
          image: "https://cdn.pixabay.com/photo/2017/08/31/14/40/fish-2700930_960_720.png"
    )
  ];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

