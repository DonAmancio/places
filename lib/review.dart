import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  //variables
  String parthFoto;

  String textoNombreUsuario;

  String textoResumenUsuario;

  int cantidadEstrellas;

  String textoComentario;

  //metodo constructor

  Review(this.parthFoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.textoComentario);

  @override
  Widget build(BuildContext context) {


    //foto


    final foto = Container(

      margin: EdgeInsets.only(


          right: 11


      ),
      width: 60,

      height: 60,

      decoration: BoxDecoration(

          shape: BoxShape.circle,

          image: DecorationImage(

              image: AssetImage(

                  parthFoto
              ),
              fit:  BoxFit.cover
          )
      ),
    );


    //nombre del usuario

    final nombreUsuario = Container(

      child: Text(

        textoNombreUsuario,

        style: TextStyle(

            fontFamily: "Lato",
            fontSize: 21

        ),


      ),


    );


    //resumen usuario

    final resumenUsuario = Container(

      margin: EdgeInsets.only(

          right: 11

      ),
      child: Text(

        textoResumenUsuario,

        style: TextStyle(

            fontFamily: "Lato",
            color: Colors.black54


        ),

      ),

    );


    //estrella normal
    final estrella = Container(

      margin: EdgeInsets.only(

          right: 5

      ),

      child: Icon(

        Icons.star,
        color: Colors.amber,
        size: 19,

      ),

    );

    //estrella borde
    final estrellaBorde = Container(

      margin: EdgeInsets.only(

          right: 5

      ),

      child: Icon(

        Icons.star_border,
        color:  Colors.black54,
        size: 19,

      ),

    );


    //fila de estrellas


    // ignore: deprecated_member_use
    List<Container> estrellas = new List();

    for(int i = 0; i < 5; i++){

      if(i < cantidadEstrellas){

        estrellas.add(estrella);
      }
      else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
      children: estrellas,

    );


    //fila resumen

    final filaResumen = Row(

      children: <Widget> [

        resumenUsuario,
        filaEstrellas

      ],

    );

    //comentario

    final comentario = Container(

      child: Text(

        textoComentario,

        style: TextStyle(

          fontFamily: "Lato",

        ),

      ),

    );

    //columna review

    final columnaReview = Column(

      mainAxisAlignment: MainAxisAlignment.spaceAround,

      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[

        nombreUsuario,
        filaResumen,
        comentario


      ],

    );

    //review

    final review = Row(

      children: <Widget>[

        foto,
        columnaReview

      ],


    );

    return review;

  }




}