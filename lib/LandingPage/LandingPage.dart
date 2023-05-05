import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return  LayoutBuilder(builder:(context,constraints){

      if (constraints.maxWidth >= 1200){
        return  Desktop(constraints.biggest.width/3) ;
      }
      else if (constraints.maxWidth >600 && constraints.maxWidth < 1200 ){
        return Tablet(constraints.biggest.width/3) ;
      }
      else {
        return  Mobile(constraints.biggest.width/1.5);
      }
    });
  }
}
Widget Desktop(double width){
  return
    Container(
      margin: EdgeInsets.symmetric(vertical: 50),

      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text("Venha nos Conhecer\nTambem prestamos servicos\n a domicilio"
              , style: TextStyle(
                  fontSize: 26,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),),
          ),
          Image.asset("assets/img/social_media.jpg",fit: BoxFit.cover,
            width:width,

          )
        ],
      ),
    );
}
Widget Tablet(double width){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 50),
    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
    child:SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Venha nos Conhecer Tambem\nprestamos servicos a domicilio"
            ,textAlign:TextAlign.center, style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold),),SizedBox(height: 60,),
          Image.asset("assets/img/social_media.jpg",fit: BoxFit.cover,
            width:width,
          )
        ],
      ),
    ),
  );
}
Widget Mobile(double width){
  return
    Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Venha nos Conhecer Tambem prestamos servicos a domicilio"
              ,textAlign:TextAlign.center, style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),),SizedBox(height: 60,),
            Image.asset("assets/img/social_media.jpg",fit: BoxFit.cover,
              width:width,
            )
          ],
        ),
      ),
    );
}
