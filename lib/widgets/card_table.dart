import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);
//------------------------- Pantalla ------------------------------------
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icon: Icons.all_inbox,
            color: Colors.red,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.purple,
            text: 'Transporte',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.piano,
            color: Colors.blue,
            text: 'Indumentaria',
          ),
          _SingleCard(
            icon: Icons.gamepad,
            color: Colors.yellow,
            text: 'Juegos',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.breakfast_dining,
            color: Colors.green,
            text: 'Panadería',
          ),
          _SingleCard(
            icon: Icons.local_pharmacy,
            color: Colors.orange,
            text: 'Farmacia',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.local_grocery_store_sharp,
            color: Colors.lightBlueAccent,
            text: 'Almacén',
          ),
          _SingleCard(
            icon: Icons.access_alarm,
            color: Colors.lightGreenAccent,
            text: 'Herramientas',
          ),
        ]),
      ],
    );
  }
}

//------------------------- SingleCard ------------------------------------

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

//------------------------- _CardBackground ------------------------------------

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            //margin: EdgeInsets.all(15),
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
