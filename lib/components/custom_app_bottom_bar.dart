import "package:flutter/material.dart";

class CustomBottomBar extends StatelessWidget {
  final Function(int) onTabChanged;

  const CustomBottomBar({super.key, required this.onTabChanged});

    @override
Widget build(BuildContext context) {
  return Container(
    color: Colors.black, // Color de fondo del CustomBottomBar
    child: ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon:const Icon(
                Icons.home,
                color: Colors.white, // Color del icono
              ),
              onPressed: () {
                onTabChanged(0); // Cambia a la pantalla de inicio
              },
            ),
            const Text(
              'Chats',
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.phone_outlined,
                color: Colors.white, // Color del ícono
              ),
              onPressed: () {
                onTabChanged(1); // Cambia a la pantalla de perfil
              },
            ),
            const Text(
              'Llamadas',
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.chat_sharp,
                color: Colors.white, // Color del ícono
              ),
              onPressed: () {
                onTabChanged(2); // Cambia a la pantalla de perfil
              },
            ),
            const Text(
              'Novedades',
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.toc,
                color: Colors.white, // Color del ícono
              ),
              onPressed: () {
                onTabChanged(3); // Cambia a la pantalla de perfil
              },
            ),
            const Text(
              'Herramientas',
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
}