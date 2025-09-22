class Product {
  final String imageUrl;
  final String name;
  final double price;
  final String? discount; 
  final bool isFreeShipping;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.discount,
    this.isFreeShipping = false,
  });
}


final List<Product> dummyProducts = [
  Product(
    imageUrl: 'https://www.shutterstock.com/image-vector/casual-sneaker-shoes-front-view-600w-2228739513.jpg',
    name: 'Sepatu Running Cepat',
    price: 268000,
    discount: '10%',
    isFreeShipping: true,
  ),
  Product(
    imageUrl: 'https://www.shutterstock.com/image-vector/sneakers-writing-run-600w-1646271220.jpg',
    name: 'Sepatu Kets Klasik',
    price: 350000,
    isFreeShipping: true,
  ),
  Product(
    imageUrl: 'https://www.shutterstock.com/image-vector/vector-blue-sneakers-on-isolated-600w-2150317331.jpg',
    name: 'Sepatu Gaya Biru',
    price: 199000,
    discount: '15%',
  ),
  Product(
    imageUrl: 'https://www.shutterstock.com/image-vector/realistic-sport-sneakers-side-view-600w-2045431367.jpg',
    name: 'Sepatu Olahraga Pro',
    price: 450000,
  ),
];
