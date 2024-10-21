import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarDemo(),
      ),
    );
  }
}

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Создание SnackBar
          final snackBar = SnackBar(
            content: Text('Salom! Bu SnackBar xabari!'),
            duration: Duration(seconds: 3), // Отображается 3 секунды
            action: SnackBarAction(
              label: 'Orqaga qaytish',
              onPressed: () {
                // Действие для кнопки "Orqaga qaytish"
                // Например, можно отменить какое-то действие
              },
            ),
          );

          // Показ SnackBar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('SnackBar ko\'rsatish'),
      ),
    );
  }
}
