import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  @override
  Widget? build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(
        right: 20,
      ),
      child: Text(
        "Duwili Ella",
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
        right: 5,

      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final estrellaBorde= Container(
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ),


    );

    final filaEstrellas = Row(
      children: <Widget>[
        estrella,
        estrella,
        estrella,
        estrella,
        estrella,
      ],


    );

    final filaTitulo = Row(
      children: <Widget>[
        titulo,
        filaEstrellas,

      ],

    );
    final descripcion = Container(
      margin:  EdgeInsets.only(
          top: 10
      ),
      child: Text(
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
    );

    final descriptionPlace = Column(
      children: <Widget>[
        filaTitulo,
        descripcion,
      ],
    );
    return null;
  }


}