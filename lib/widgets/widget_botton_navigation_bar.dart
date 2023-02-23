import 'package:flutter/material.dart';

class WidgetHomeBottomNavigatorBar extends StatelessWidget {
  const WidgetHomeBottomNavigatorBar({Key? key}) : super(key: key);

  Widget _text({required String text, double? fontSize, Color? color}) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize ?? 16.0, color: color ?? Colors.white70),
    );
  }

  Widget _displayRowResult() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Depósito',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
        Text(
          '+ R\$: 1.000,00',
          style: TextStyle(
              fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 19, 19, 19),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _text(text: '03 OUT/22', color: Colors.white, fontSize: 18.0),
            _displayRowResult(),
            _text(text: 'Negado'),
            const SizedBox(
              height: 20.0,
            ),
            _text(text: '03 OUT/22', color: Colors.white, fontSize: 18.0),
            _displayRowResult(),
            _text(text: 'Negado'),
            const SizedBox(
              height: 20.0,
            ),
            _text(text: '03 OUT/22', color: Colors.white, fontSize: 18.0),
            _displayRowResult(),
            _text(text: 'Negado'),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
