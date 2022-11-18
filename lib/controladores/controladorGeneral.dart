import 'dart:ffi';

import 'package:flutter_application_1/clases/productos.dart';
import 'package:get/get.dart';

class controladorGeneral extends GetxController {

  final _posicion = 2.obs;
  final pd = <Productos> [].obs;

  @override
  void onInit() {
    pd.add(Productos(
      1,
      "Tennis polo",
      "https://static.dafiti.com.co/p/royal-county-of-berkshire-polo-club-7527-8304091-1-product.jpg",
      120000,
      0));
    pd.add(Productos(
      2,
      "Tennis nike",
      "https://static.dafiti.com.co/p/nike-6714-4000181-1-product.jpg",
      280000,
      0));
    pd.add(Productos(
      3,
      "Tennis nike",
      "https://static.dafiti.com.co/p/tommy-hilfiger-9770-3902502-1-product.jpg",
      350000,
      0));  

    // TODO: implement onInit

    super.onInit();
  }


//////////////

  void cambiarCantidad(int posi, int can){
  pd[posi].cantidad = can;

  }

///////////////

int calcularTotal(){
  int total = 0;
  for (var i = 0; i < pd.length; i++){
    total = total + pd[i].cantidad*pd[i].precio;
  
  }
  return total;

}
////////////////
  void cargarPosicion(int x){
    _posicion.value = x;
    }

    int get posicion => _posicion.value;

}