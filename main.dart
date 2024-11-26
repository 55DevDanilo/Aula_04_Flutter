import 'package:flutter/material.dart';

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Tela'),
      ),
      body: Center(
        child: ElevatedButton(
// Dentro do widget Primeira Rota
          onPressed: () {
//TODO: Navega para a segunda rota usando uma rota nomeada
            Navigator.pushNamed(context, '/segunda');
          },

          child: const Text('Ir para Segunda Rota'),
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  const SegundaRota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Rota'),
      ),
      body: Center(
        child: ElevatedButton(
// Dentro do widget Segunda Rota

          onPressed: () {
//TODO: Navega para a Primeira Rota usando a função pop da pilha de rotas
            Navigator.pop(context);
          },

          child: const Text('Voltar'),
        ),
      ),
    );
  }
}

//A seguir, vamos codificar e nomear as nossas rotas dentro da main:

void main() {
  runApp(
    MaterialApp(
      title: 'Rotas Nomeadas',

// O aplicativo começa na rota nomeada "/". Neste caso, é a primeira rota
//

      initialRoute: '/',

      routes: {
// Quando navega-se para a rota nomeada "/", constrói-se o widget Primeira Tela.
        '/': (context) => const PrimeiraTela(),

// Quando navega-se para a rota nomeada "/segunda", constrói-se o widget Segunda Tela.
        '/segunda': (context) => const SegundaRota(),
      },
    ),
  );
}
