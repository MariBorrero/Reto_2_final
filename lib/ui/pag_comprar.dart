import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controladores/controladorGeneral.dart';

class pag_comprar extends StatefulWidget {
  const pag_comprar({super.key});

  @override
  State<pag_comprar> createState() => pag_comprarState();
}

class pag_comprarState extends State<pag_comprar> {

  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: Control.pd.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                  Control.pd[index].nombre + 
                "  |   " +
                  Control.pd[index].precio.toString()),
                  leading: Image(
                    image: NetworkImage(Control.pd[index].imagen),
                  ),
                  trailing: Text(Control.pd[index].cantidad.toString()),
                  subtitle: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          int nuevacantidad = Control.pd[index].cantidad-1;

                          if (nuevacantidad<0){
                              nuevacantidad = 0;
                            }

                          Control.cambiarCantidad(index, nuevacantidad);
                          Control.pd.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_down_rounded)),
                      VerticalDivider(),
                      IconButton(
                        onPressed: () {
                          int nuevacantidad = Control.pd[index].cantidad+1;
                          Control.cambiarCantidad(index, nuevacantidad);
                          Control.pd.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_up_rounded)),
                    ]
                  ),
                ),
              );
            })       
          ),
        ),
      )
    );
  }
}
