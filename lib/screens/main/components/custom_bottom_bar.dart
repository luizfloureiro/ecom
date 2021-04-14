import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//doc
/***
  StatelessWidget que define a barra inferior
  apresentada na pagina principal da aplicacao,
  composicao de items navegaveis em uma linha
  ***/
class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
                    'assets/icons/home_icon.svg',
                    fit: BoxFit.fitWidth,
                    ),
            onPressed: () {
              controller.animateTo(0);
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/category_icon.png'),
            onPressed: () {
              controller.animateTo(1);
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart_icon.svg'),
            onPressed: () {
              controller.animateTo(2);
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/profile_icon.png'),
            onPressed: () {
              controller.animateTo(3);
            },
          )
        ],
      ),
    );
  }
}
