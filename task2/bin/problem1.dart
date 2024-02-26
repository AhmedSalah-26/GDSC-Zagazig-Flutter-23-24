//  1- a
//  2- d
// 3 -c
// 4- a
// 5- a



double calculateTotalPrice(Map<String, double> cart, Map<String, double> prices) {
  double totalPrice = 0.0;

  cart.forEach((itemName, quantity) {
    double? price = prices[itemName];
    if (price != null) {
      totalPrice += price * quantity;
    } else {
      print("Price for item '$itemName' not found.");
    }
  });

  return totalPrice;
}

void main() {
  // Example usage:
  Map<String, double> cart = {
    'apple': 2,
    'banana': 3,
    'orange': 1,
    'pear': 2,
  };

  Map<String, double> prices = {
    'apple': 0.5,
    'banana': 0.3,
    'orange': 0.4,
    // 'pear' price is missing intentionally to demonstrate handling missing prices
  };

  double total = calculateTotalPrice(cart, prices);
  print('Total price: \$${total.toStringAsFixed(2)}');
}
