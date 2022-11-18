import 'package:flutter/material.dart';

class pag_inicio extends StatefulWidget {
  const pag_inicio({super.key});

  @override
  State<pag_inicio> createState() => _pag_inicioState();
}

class _pag_inicioState extends State<pag_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
          image: NetworkImage(
            "https://img.freepik.com/vector-premium/plantilla-happy-shop-logo_57516-57.jpg"
          )
        ),
      )
    );
  }
}