import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto()
          ]
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Image(
            image: NetworkImage('https://wallpaperaccess.com/full/1289981.jpg') 
          );
  }

  Widget _crearTitulo(){
    return SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lago con paisaje', style: estiloTitulo),
                          SizedBox(height: 7.0,),
                          Text('Un lago en Alemania.', style: estiloSubTitulo)
                        ],
                      ),
                    ),
                    Icon(Icons.star, color: Colors.red, size: 30.0),
                    Text('41', style: TextStyle(fontSize: 20.0))
                  ],
                ),
              ),
            );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ]
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
            children: <Widget>[
              Icon(icon, color: Colors.blue, size: 40.0),
              SizedBox(height: 5.0),
              Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
            ],
          );
  }

  Widget _crearTexto(){
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            'Eiusmod non deserunt esse consequat anim reprehenderit non sit eiusmod irure duis id. Nulla dolore irure est aliqua tempor labore. Voluptate qui aliquip mollit nisi sunt ad. Mollit nisi amet pariatur nisi sit. Ad eiusmod nulla duis commodo consectetur amet laborum non do aliquip exercitation. Labore id est consectetur non.',
            textAlign: TextAlign.justify,
          ),
        ),
    );
  }
}