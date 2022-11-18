import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:flutter_application_1/ui/menu.dart';
import 'package:flutter_application_1/ui/pag_acercade.dart';
import 'package:flutter_application_1/ui/pag_comprar.dart';
import 'package:flutter_application_1/ui/pag_inicio.dart';
import 'package:flutter_application_1/ui/pag_mis_producto.dart';
import 'package:get/get.dart';

List Paginas = [
  pag_acercade(),
  pag_comprar(),
  pag_inicio(),
  pag_mis_producto(),

];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Shop'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Obx(() => Paginas[Control.posicion]),
      drawer: menu(),

    );
  }
}
