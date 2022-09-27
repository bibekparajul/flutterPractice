class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color,required this.image});

  
}

final products = [Item(
  id: "fruit1",
  name: "Apple",
  desc: "Mitho Apple",
  price: 1000,
  color: "#33505a",
  image: "https://imgs.search.brave.com/Ff5cqp-bvmiOHfRcFrOngoLF03zvE3Z5SdisTZttCnU/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvYXBwbGUvYXBw/bGVfUE5HMTI0MDUu/cG5n"

)];
