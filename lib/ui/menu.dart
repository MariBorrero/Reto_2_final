import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controladores/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    "https://cmumonica.es/wp-content/uploads/2019/02/silueta-mujer-fot-carnet-255x300.png"
                  ),
                ),
                accountName: Text("Maria Borrero"),
                accountEmail: Text("amborrero@uninorte.edu.co")
              )
            ),
            Divider(),
            Expanded(child: ListView(children: [
              ListTile(
                title: Text("Inicio"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_right_outlined),
                onTap: () {
                  Control.cargarPosicion(2);
                  Navigator.pop(context);
                },
            
              ),
              ListTile(
                title: Text("Comprar"),
                leading: Icon(Icons.shopping_cart_checkout),
                trailing: Icon(Icons.arrow_right_outlined),
                onTap: () {
                  Control.cargarPosicion(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Mis productos"),
                leading: Icon(Icons.shopify_rounded),
                trailing: Icon(Icons.arrow_right_outlined),
                onTap: () {
                  Control.cargarPosicion(3);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Acerca de..."),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_right_outlined),
                onTap: () {
                  Control.cargarPosicion(0);
                  Navigator.pop(context);

                },
              ),

            ],


            ))

          ],
        ),
      ),
    );
  }
}