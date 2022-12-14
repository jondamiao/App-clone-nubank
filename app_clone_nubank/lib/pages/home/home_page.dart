import 'package:app_clone_nubank/pages/account/account.dart';
import 'package:app_clone_nubank/pages/actions/menu_items.dart';
import 'package:app_clone_nubank/pages/home/model/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Column(children: const [
          Header(),
          AccountNubank(),
          MenuItems(),
        ]),
      )),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
