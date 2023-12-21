import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (_formKey.currentState!.validate()) {
      String username = usernameController.text;
      String password = passwordController.text;

      // Simulate successful login
      print('Kullanıcı Adı: $username');
      print('Şifre: $password');

      // Navigate to the SecondPage on successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondPage(username)),
      );
    }
  }

  void forgotPassword() {
    print('Şifremi Unuttum');
  }

  void navigateToSignUp() {
    print('Navigate to Sign Up');
  }

  String? validateUsername(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return 'Kullanıcı adı boş bırakılamaz';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return 'Şifre boş bırakılamaz';
    }
    return null;
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
                validator: validateUsername,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Şifre'),
                validator: validatePassword,
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: forgotPassword,
                child: Text('Şifremi Unuttum'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: login,
                child: Text('Giriş'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: navigateToSignUp,
                child: Text('Yeni Kullanıcı? Hesap oluştur.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String username;

  SecondPage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoş Geldiniz, $username'),
      ),
      body: ProductGrid(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Sepete Git'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ShoppingCartPage(productsInCart)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(product: products[index]);
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('images/${product.imagePath}'),
          Text(product.name),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Ürün Sepete Eklendi'),
                    content: Text('${product.name} sepete eklendi.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Tamam'),
                      ),
                    ],
                  );
                },
              );
              productsInCart.add(product); // Add product to cart
            },
            child: Text('Sepete Ekle'),
          ),
        ],
      ),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  final List<Product> productsInCart;

  ShoppingCartPage(this.productsInCart);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alışveriş Sepeti'),
      ),
      body: ListView.builder(
        itemCount: productsInCart.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset('images/${productsInCart[index].imagePath}'),
            title: Text(productsInCart[index].name),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String imagePath;

  Product({required this.name, required this.imagePath});
}

List<Product> products = [
  Product(name: 'Police', imagePath: '1.jpg'),
  Product(name: 'Lacoste', imagePath: '2.jpg'),
  Product(name: 'Guess', imagePath: '3.jpg'),
  Product(name: 'Emporio Armani', imagePath: '4.jpg'),
  Product(name: 'Vogue', imagePath: '5.jpg'),
  Product(name: 'Oakley', imagePath: '6.jpg'),
];

List<Product> productsInCart = [];
