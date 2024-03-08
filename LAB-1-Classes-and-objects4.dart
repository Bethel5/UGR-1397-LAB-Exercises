class Product {
  String name;
  double price;
  int quantity;


  Product(this.name, this.price, this.quantity);


  double calculateTotalCost() {
    return price * quantity;
  }


  void displayInfo() {
    print('Product: $name');
    print('Price: \$${price.toStringAsFixed(2)}'); 
    print('Quantity: $quantity');
    print('Total Cost: \$${calculateTotalCost().toStringAsFixed(2)}'); 
  }
}

void main() {

  Product product1 = Product('Iphone', 2200.0, 1);

  product1.displayInfo();
}