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
    String username = usernameController.text;
    String password = passwordController.text;

    // Burada giriş işlemleri yapılabilir

    print('Kullanıcı Adı: $username');
    print('Şifre: $password');
  }

  void forgotPassword() {
    // Burada şifremi unuttum işlemleri yapılabilir
    print('Şifremi Unuttum');
  }

  void navigateToSignUp() {
    // Yeni kullanıcı hesap oluştur sayfasına yönlendirme işlemleri
    print('Yeni Kullanıcı? Hesap Oluştur sayfasına yönlendirme');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 20),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Şifre'),
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
    );
  }
}
