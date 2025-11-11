import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Aquí puedes añadir variables de estado para tu Home Page
  String _pageTitle = 'Inicio'; // Ejemplo de título dinámico

  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
      // --- AppBar (Barra superior) ---
      appBar: AppBar(
        title: Text(_pageTitle), // Usa la variable para el título
        backgroundColor: Colors.blueAccent, // Color de la barra
        elevation: 4, // Sombra debajo de la barra
      ),

      // --- Drawer (Menú lateral) ---
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // Elimina el padding por defecto
          children: <Widget>[
            // Encabezado del Drawer (opcional, pero común)
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Opciones del Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // Opción 1 del menú
            ListTile(
              leading: const Icon(Icons.home), // Icono a la izquierda
              title: const Text('Inicio'),
              onTap: () {
                // Actualiza el título y cierra el drawer
                setState(() {
                  _pageTitle = 'Inicio';
                });
                Navigator.pop(context); // Cierra el Drawer
                // Aquí podrías navegar a la propia HomePage o recargar contenido
              },
            ),
            // Opción 2 del menú
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () {
                // Cierra el Drawer
                Navigator.pop(context);
                // Aquí podrías navegar a una página de Configuración
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
            // Divisor para separar secciones (opcional)
            const Divider(),
            // Opción 3 del menú (ejemplo de otra sección)
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Acerca de'),
              onTap: () {
                Navigator.pop(context);
                // Aquí podrías mostrar un diálogo o navegar a una página
              },
            ),
          ],
        ),
      ),

      // --- Body (Contenido principal de la página) ---
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
          children: <Widget>[
            Icon(
              Icons.dashboard,
              size: 100,
              color: Colors.grey,
            ),
            SizedBox(height: 20), // Espacio entre el icono y el texto
            Text(
              'Bienvenido a tu Página de Inicio',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Usa el menú lateral para navegar o añade más contenido aquí.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),

      // --- FloatingActionButton (Botón flotante, opcional) ---
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el botón
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('¡Botón flotante presionado!')),
          );
        },
        child: const Icon(Icons.add), // Icono del botón
        backgroundColor: Colors.green, // Color del botón
      ),
    );
  }
}