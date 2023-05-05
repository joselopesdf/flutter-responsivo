
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder:(context,constraints){
      if (constraints.maxWidth >= 1200){
        return DesktopNavbar();
      }
      else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200 ){
        return  DesktopNavbar();
      }
      else {
        return Mobile() ;
      }
    });
  }
}
class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
        child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "MTechnology",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
              ),
            ),
            Row(
              children: [
                Text("Home",
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),SizedBox(width:30,),
                Text("About",
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),SizedBox(width: 30,),
                Text("Service",
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                SizedBox(width: 30,
                ),MaterialButton(
                  color:Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                          Radius.circular(20))
                  ),
                  onPressed:(){
                  },child: Text(
                  "Get Started",
                  style:TextStyle(color: Colors.white) ,
                ),
                )
              ],
            )
          ],
        ),
    ),
      );
  }
}
class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "MTechnology",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
              ),
            ),
            Container(
                child: Icon(Icons.menu,
                weight: 10,
                size: 50,)
            )
          ],
        ),
      ),
    );;
  }
}