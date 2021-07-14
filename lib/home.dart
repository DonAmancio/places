import 'package:flutter/material.dart';
import 'package:placesproyect/review.dart';

import 'package:placesproyect/description_place.dart';

class MyHome extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    final Container descriptionPlace = Container(

      margin: EdgeInsets.only(


          top: 350,
          left: 20,
          right: 16

      ),


      child: DescriptionPlace("salar de Uyuni", 5, "El Salar de Uyuni, en medio de los Andes en el sur de Bolivia, es la salina más grande del mundo. Es el legado de un lago prehistórico que se secó y dejó un paisaje desértico de casi 11,000 km cuadrados de sal blanca brillante, formaciones rocosas e islas con cactus. Su mística extensión se puede observar desde la isla central Incahuasi. Aunque la fauna es escasa en este ecosistema único, alberga a varios flamencos rosa "),


    );


    final review = Container(

        margin: EdgeInsets.only(


            top: 350,
            left: 20,
            right: 20

        ),


        height: 80,

        child: Review("assets/images/perfil.jpg","KUNIO", "1 reviews - 4 photos" , 2 , "Exelente lugar para los pibes.")

    );



    return Scaffold(

      appBar: AppBar(

        title: Text(


            "My places"

        ),



      ),

      body: Stack(

        children: <Widget> [

          review

        ],

      ),

    );

  }