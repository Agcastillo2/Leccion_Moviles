import 'package:flutter/material.dart';

class IntercambiarPantalla extends StatefulWidget {
  @override
  _IntercambiarPantallaState createState() => _IntercambiarPantallaState();
}

class _IntercambiarPantallaState extends State<IntercambiarPantalla> {
  TextEditingController controladorA = TextEditingController();
  TextEditingController controladorB = TextEditingController();
  String resultadoA = '';
  String resultadoB = '';

  void intercambiar() {
    // Realizamos el intercambio de las palabras
    String temporal = controladorA.text;
    controladorA.text = controladorB.text;
    controladorB.text = temporal;

    setState(() {
      resultadoA = controladorA.text;
      resultadoB = controladorB.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo con imagen
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'img/espe.png'), // Asegúrate de tener la imagen en el directorio assets/img/
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Título con fondo semitransparente
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black
                        .withOpacity(0.6), // Fondo oscuro con transparencia
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Intercambiar Palabras',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily:
                          'Roboto', // Cambia la fuente si la tienes disponible
                    ),
                  ),
                ),
                SizedBox(height: 40),

                // Campo de texto para "Palabra A"
                TextField(
                  controller: controladorA,
                  decoration: InputDecoration(
                    labelText: 'Palabra A',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Ingresa la primera palabra',
                    hintStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.black
                        .withOpacity(0.5), // Fondo oscuro en el campo
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.text_fields, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),

                // Campo de texto para "Palabra B"
                TextField(
                  controller: controladorB,
                  decoration: InputDecoration(
                    labelText: 'Palabra B',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Ingresa la segunda palabra',
                    hintStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.black
                        .withOpacity(0.5), // Fondo oscuro en el campo
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.text_fields, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 30),

                // Botón para intercambiar las palabras
                ElevatedButton(
                  onPressed: intercambiar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.teal.shade600, // Color del fondo del botón
                    foregroundColor: Colors.white, // Color del texto del botón
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Bordes redondeados
                    ),
                  ),
                  child: Text(
                    'Intercambiar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 40),

                // Mostrar las palabras después del intercambio
                Text(
                  'Palabra A: $resultadoA',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Palabra B: $resultadoB',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
