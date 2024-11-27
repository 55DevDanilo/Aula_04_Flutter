import 'package:flutter/material.dart';
import 'pagina2.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RotaUm(),
    );
  }
}

class RotaUm extends StatefulWidget {
  State<RotaUm> createState() => RotaUmPagina();
}

class RotaUmPagina extends State<RotaUm> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(context, criarRota());
        },
      ),
    );
  }
}

Route criarRota() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => RotaDois(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset(0, 0);
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween),
      child:child,
      );
    },
  );
}
