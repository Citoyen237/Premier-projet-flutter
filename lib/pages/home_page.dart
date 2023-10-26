import 'package:flutter/material.dart';
//import 'event_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(

        //culumn elementsous les autre
        child: Column(
        
        //centrer le contenu par rapport a la verticale
          mainAxisAlignment: MainAxisAlignment.center,
          
          children:[
            Image.asset("assets/images/i2.png"),
           const Text(
              "Asynconf 2022",
              style: TextStyle(
                fontSize: 42,
              ),
            ),
          const  Text("salon virtuel de l'informatique. du 27 au 29 Octobre 2022",
            style:TextStyle(
              fontSize:24,
            ),
            textAlign: TextAlign.center,
            ),
          ],
        ),
      );
  }
}