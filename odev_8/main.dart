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
      // Giriş işlemleri yapılır
      String username = usernameController.text;
      String password = passwordController.text;

      print('Kullanıcı Adı: $username');
      print('Şifre: $password');

      // Snackbar gösterme
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kullanıcı Adı: $username\nŞifre: $password'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  void forgotPassword() {
    // Implement the logic for forgot password
    print('Şifremi Unuttum');
  }

  void navigateToSignUp() {
    // Implement the logic to navigate to the sign-up screen
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
