
class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

// Dummy data list
final List<Product> dummyProducts = [
  Product(
    name: "Fresh Apples",
    price: 2.99,
    imageUrl: "https://imgs.search.brave.com/gpprMpqPqfmpgqC-ynGNz1mqPxkBbQ17R2vHF-M9dVw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFyUUxPQ1JEeUwu/anBn",
    description: "Crisp and sweet red apples, perfect for a healthy snack.",
  ),
  Product(
    name: "Bananas (Bunch)",
    price: 1.89,
    imageUrl: "https://imgs.search.brave.com/JP_tfTJF_YrKH1qMINLEOs4pMUDKDvZIWc7m5ZWfOPE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly91cy4x/MjNyZi5jb20vNDUw/d20vanBraXJha3Vu/L2pwa2lyYWt1bjE5/MDUvanBraXJha3Vu/MTkwNTAwMDA3LzEy/MTkyOTQ1Ny1idW5j/aC1vZi1yaXBlLWJh/bmFuYXMtaXNvbGF0/ZWQtb24tZ3JlZW4t/YW5kLXllbGxvdy1i/YWNrZ3JvdW5kLmpw/Zz92ZXI9Ng",
    description: "A bunch of ripe, yellow bananas, rich in potassium.",
  ),
  Product(
    name: "Carrots (1kg)",
    price: 1.49,
    imageUrl: "https://imgs.search.brave.com/h580bJZzAznalg1K-rU5PXUjEwt43TVEZzfZJTNcJKw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9idXRj/aGVyeW9uYnJ1bmtl/ci5jb20vY2RuL3No/b3AvcHJvZHVjdHMv/aW1hZ2VfMmI2ZThk/MDgtZDFhNC00YzBh/LTkwZTMtMTgyMzgw/NmE4ODQ1XzUzMHhA/MnguanBnP3Y9MTU5/NjUxNjU4Mw",
    description: "Fresh, organic carrots, great for salads or cooking.",
  ),
  Product(
    name: "Broccoli",
    price: 2.20,
    imageUrl: "https://imgs.search.brave.com/UmoOMhIuaUZQPkfIEfG6OSuQO3An-gPdsC4nsQmmr-o/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAyMi8w/My8wNS8yMS8xOC92/ZWdldGFibGUtNzA1/MDMzN182NDAuanBn",
    description: "A large head of green broccoli, packed with vitamins.",
  ),
  Product(
    name: "Tomatoes (500g)",
    price: 2.50,
    imageUrl: "https://imgs.search.brave.com/jWqfxGMXne-RcKDgh_XLavxKRT-_0hNNBMPdFjjcXAw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/a2VudHZlZ2JveC5j/b20vY2RuL3Nob3Av/ZmlsZXMvdG9tYXRv/ZXNmbV9kYTlmZTAx/NS0yNzNlLTRjNGIt/YjkwOS1hMjk0ZTdl/OGQ5ZjIuanBnP3Y9/MTcxMDg2NDA0MCZ3/aWR0aD0xODAw",
    description: "Ripe vine tomatoes, juicy and full of flavor.",
  ),
  Product(
    name: "Spinach Bag",
    price: 3.10,
    imageUrl: "https://imgs.search.brave.com/dxt6ryA8pjXG_7N7BmHuHMaaNzIGc6D3ZN8iPJ94E4A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/ODFYcVRnUzlkVUwu/anBn",
    description: "A bag of fresh baby spinach, ready to eat.",
  ),
];