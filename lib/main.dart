import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Lista de Contato';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(contatos[index].nomeCompleto[0],
                      style: TextStyle(color: Colors.white)),
                ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              );
            },
          )),
    );
  }
}

// Anteriormente fiz com uma lista estática
// List<String> linguagens = ['Java', 'C#', 'Python', 'Javascript', 'Dart', 'Go'];

class Contato {
  String nomeCompleto;
  String email;

  Contato(this.nomeCompleto, this.email);
}

List<Contato> contatos = [
  Contato('Guilherme Bussolan', 'guilhermebussolan@gmail.com'),
  Contato('Gustavo Bussolan', 'gustavobussolan@gmail.com'),
  Contato('Rosangela Bussolan', 'rosangelabussolan@gmail.com'),
  Contato('Henrique Bussolan', 'henriquebussolan@gmail.com'),
  Contato('Daniel Bussolan', 'danielbussolan@gmail.com'),
  Contato('Daniela Bussolan', 'danielabussolan@gmail.com')
];
