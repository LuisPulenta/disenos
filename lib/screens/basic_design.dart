import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/paris.jpg')),
        const Title(),
        const ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: const Text(
              'Laboris veniam nostrud in proident veniam excepteur dolor ex sunt non velit voluptate consectetur nulla. Aliqua ad voluptate nostrud occaecat ullamco irure elit elit sit consequat commodo. Laboris velit sint adipisicing adipisicing ullamco exercitation tempor nulla irure aute est sit Lorem do. Pariatur ea ipsum officia laborum sunt sunt aute ex ipsum adipisicing occaecat ea dolore.Laboris et eu adipisicing cupidatat. Tempor sit officia ut ad anim ullamco. Proident aliquip ex quis ullamco eu sint adipisicing. Nostrud do reprehenderit laborum sint magna non sit velit ea elit tempor nulla consequat adipisicing. Voluptate consectetur deserunt dolor cillum ex pariatur aliquip et ullamco nulla officia. '),
        ),
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('kendersteg, Switzerland',
                style: TextStyle(color: Colors.black45)),
          ]),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.arrow_circle_right,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon, color: Colors.blue),
      Text(text, style: const TextStyle(color: Colors.blue)),
    ]);
  }
}
