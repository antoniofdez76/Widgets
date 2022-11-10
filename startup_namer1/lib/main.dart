import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Widget Raiz
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: SafeArea(
          child: Scaffold(
              body: Column(children: <Widget>[
                appWitget(context),
              ]))),
    );
  }

  Widget appWitget(BuildContext context) {
    const double size01 = 30.0;
    const double size02 = 25.0;

    return Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text("Aplicación - Móvil",
                              style: TextStyle(
                                  fontSize: size01, fontWeight: FontWeight.bold)),
                        ]))), // Texto Top

            Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                      child: Container(
                          color: Colors.lightBlue,
                          child: const Center(
                              child: Text("Contenedor 1, Fila 1, Columna 1",
                                  style: TextStyle(fontSize: size02))))),
                  Expanded(
                      child: Container(
                          color: Colors.lightBlueAccent,
                          child: const Center(
                              child: Text("Contenedor 2, Fila 1, Columna 2",
                                  style: TextStyle(fontSize: size02))))),
                ])), //Row 1/2

            Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                      child: Container(
                          color: Colors.green,
                          child: const Center(
                              child: Text("Contenedor 3, Fila 2, Columna 1",
                                  style: TextStyle(fontSize: size02))))),
                  Expanded(
                      child: Container(
                          color: Colors.blue,
                          child: const Center(
                              child: Text("Contenedor 4, Fila 2, Columna 2",
                                  style: TextStyle(fontSize: size02))))),
                ])), //Row 2/2
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text("Ejercicio de widgets",
                              style: TextStyle(
                                  fontSize: size01, fontWeight: FontWeight.bold))
                        ]))), // Text Bottom
          ],
        ));
  }
}