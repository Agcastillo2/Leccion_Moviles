import 'package:flutter/material.dart';
import 'intercambiar_palabras.dart'; // Importamos el archivo con la pantalla de intercambio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
        centerTitle: true,
        backgroundColor: Colors.teal.shade800, // Color de fondo de la AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.teal.shade200, // Fondo verde cálido
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Imagen en la parte superior
              Image.asset(
                'img/espe.png',
                height: 200, // Ajuste del tamaño de la imagen
                width: 200, // Ajuste del tamaño de la imagen
              ),
              SizedBox(height: 20), // Espacio después de la imagen

              // Cuadro con mensaje de bienvenida y autor
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Bienvenido al ejercicio de intercambio de palabras',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.teal.shade600, // Color del fondo del botón
                        foregroundColor:
                            Colors.white, // Color del texto del botón
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IntercambiarPantalla()),
                        );
                      },
                      child: Text('Ir a Intercambiar Palabras'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Autor: Ángel Castillo',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.teal.shade500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
