import 'package:flutter/material.dart';

import '../components/component_button.dart';
import '../components/component_container.dart';
import '../widgets/widget_botton_navigation_bar.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  Widget _displayUserAccount() {
    return Container(
      alignment: Alignment.topLeft,
      width: 368,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _text(text: 'Olá, Jonas', fontWeight: FontWeight.bold),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _text(text: 'AG: 0000', fontWeight: FontWeight.bold),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),
                label: _text(text: 'Ver Extrato', fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _text(
      {required String text,
      double? fontSize,
      Color? color,
      FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? 16.0,
          color: color ?? Colors.white,
          fontWeight: fontWeight),
    );
  }

  Widget _displayAvailableBalance() {
    return ComponentContainer(
      height: 180,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _text(text: 'SALDO DISPONÍVEL', color: Colors.white70),
          _text(
              text: 'R\$: 62.535,56',
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
          _text(text: 'PENDENTE: R\$: 1.000,00', color: Colors.white70),
        ],
      ),
    );
  }

  Widget _displayNftBalance() {
    return ComponentContainer(
        height: 140,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _text(text: 'SALDO EM NFT', color: Colors.white70),
            _text(
                text: 'R\$: 241.005,56',
                fontSize: 24.0,
                fontWeight: FontWeight.bold)
          ],
        ));
  }

  Widget _rowButton({required IconData icon, required String textDescription}) {
    return Column(
      children: [
        ComponentButton(
          height: 64.0,
          width: MediaQuery.of(context).size.width / 6.17,
          onTap: () {},
          child: Icon(
            icon,
            color: Colors.white,
            size: 26.0,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        _text(
            text: textDescription, fontWeight: FontWeight.bold, fontSize: 14.0),
      ],
    );
  }

  Widget _displayGif() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://media.giphy.com/media/5iikigM1gVpMwBdV5B/giphy.gif',
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buyNFTButton() {
    return ComponentButton(
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        onTap: () {},
        child: _text(
            text: 'Comprar NFT', fontSize: 18.0, fontWeight: FontWeight.bold));
  }

  Widget _rowTextUserSettingsComplete() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
      child: const Text('COMPLETE A CONFIGURAÇĀO DE SUA CONTA',
          style: TextStyle(
              letterSpacing: 1.2,
              fontSize: 18,
              color: Colors.white70,
              height: 1.6)),
    );
  }

  Widget _elevatedButton({required GestureTapCallback onPressed}) =>
      ElevatedButton(
          onPressed: onPressed,
          child: _text(text: 'Configurar', fontSize: 14.0));

  Widget _userSettings() {
    return ComponentContainer(
      height: 500,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _text(text: 'FOTO DE PERFIL', fontSize: 18.0),
          _text(
              text: 'Defina uma foto de perfil em sua conta',
              color: Colors.white70),
          _elevatedButton(onPressed: () {}),
          _text(text: 'BENEFICIÁRIO', fontSize: 18.0),
          const Text('Informe os dados pessoais de seu beneficiário',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                letterSpacing: 1.2,
              )),
          _elevatedButton(onPressed: () {}),
          _text(text: 'SÓCIO', fontSize: 18.0),
          const Text('Informe os dados pessoais de seu sócio representante',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                letterSpacing: 1.2,
              )),
          _elevatedButton(onPressed: () {}),
        ],
      ),
    );
  }

  Widget _homeLatestTransactions() {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: const Color.fromARGB(255, 19, 19, 19),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            context: context,
            builder: (context) => const WidgetHomeBottomNavigatorBar());
      },
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                _text(text: 'Ver Transaçōes', fontSize: 14.0),
                _sizedBox(width: 8.0),
                const Icon(
                  Icons.keyboard_arrow_up_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _sizedBox({required double width}) => SizedBox(width: width);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _sizedBox(width: 8.0),
          ],
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _displayUserAccount(),
              _displayAvailableBalance(),
              _displayNftBalance(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _rowButton(
                      icon: Icons.arrow_upward_outlined,
                      textDescription: 'Depositar'),
                  _rowButton(icon: Icons.home, textDescription: 'Comprar'),
                  _rowButton(
                      icon: Icons.arrow_downward_outlined,
                      textDescription: 'Registrar'),
                  _rowButton(icon: Icons.info, textDescription: 'Transferir')
                ],
              ),
              _sizedBox(width: 10.0),
              _displayGif(),
              _sizedBox(width: 5.0),
              _buyNFTButton(),
              _sizedBox(width: 10.0),
              _rowTextUserSettingsComplete(),
              _sizedBox(width: 5.0),
              _userSettings()
            ],
          ),
        ),
      ),
      bottomNavigationBar: _homeLatestTransactions(),
    );
  }
}
