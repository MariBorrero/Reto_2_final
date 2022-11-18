import 'package:flutter/material.dart';
import 'package:flutter_application_1/controladores/controladorGeneral.dart';
import 'package:get/get.dart';

class pag_mis_producto extends StatefulWidget {
  const pag_mis_producto({super.key});

  @override
  State<pag_mis_producto> createState() => _pag_mis_productoState();
}

class _pag_mis_productoState extends State<pag_mis_producto> {
  
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: Control.pd.length,
              itemBuilder: (BuildContext context, index) {
                return Control.pd[index].cantidad == 0
                ? Text("")
                : Card(
                    child: ListTile(
                      title: Text(Control.pd[index].nombre),
                      subtitle: Text(
                        "Precio: " +
                        Control.pd[index].precio.toString() +
                        "   |   Cantidad :" +
                        Control.pd[index].cantidad.toString()
                      ),

                      trailing: Text("Subtotal :"+
                      (Control.pd[index].precio * Control.pd[index].cantidad).toString()
                      ),
                  ));
              },
            ),
            ),
            Divider(),
            Text("Total a pagar : "+
            Control.calcularTotal().toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.save), 
              label: Text("Comprar")),
            
          ]),
      ));
  }
}