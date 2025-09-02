import 'dart:math';

sumTotalValue(List<dynamic> inventory) {
  for (final item in inventory) {
    print("Item: $item");
  }
}

void main() {
  const List<String> fruits = [
    "apple",
    "banana",
    "tomato",
    "tomatillo",
    "grape",
    "orange",
    "lime",
    "lemon",
    "cherry",
    "peach",
  ];

  List<dynamic> inventory = [
    ('river', 'dog', 6, 20),
    ('river', 'dog', 6, 20),
    ('river', 'dog', 6, 20),
  ];

  inventory.insert(2, 'IN_TRANSIT');

  sumTotalValue(inventory);

  print("Hello, Dart!");

  var rand = Random();
  print("random number: ${rand.nextInt(10)}");
}
