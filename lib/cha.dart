import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatsPage(),
    );
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  // Ejemplo de JSON (simulado para demostración)
  static const String jsonString = '''
    [
      {"name": "Alice", "description": "Flutter developer", "imageUrl": "https://via.placeholder.com/150"},
      {"name": "Bob", "description": "Mobile app enthusiast", "imageUrl": "https://via.placeholder.com/150"},
      {"name": "Charlie", "description": "UI/UX designer", "imageUrl": "https://via.placeholder.com/150"}
    ]
  ''';

  @override
  Widget build(BuildContext context) {
    List<dynamic> jsonList = jsonDecode(jsonString); // Decodificar el JSON

    List<Person> people = jsonList.map((json) => Person.fromJson(json)).toList(); // Mapear a objetos Person

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Personas'),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          Person person = people[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(person.imageUrl),
              ),
              title: Text(person.name),
              subtitle: Text(person.description),
              onTap: () {
                // Acción al hacer tap en la tarjeta (opcional)
              },
            ),
          );
        },
      ),
    );
  }
}

class Person {
  final String name;
  final String description;
  final String imageUrl;

  Person({required this.name, required this.description, required this.imageUrl});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}
