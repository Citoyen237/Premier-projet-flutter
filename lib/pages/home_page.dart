import 'package:flutter/material.dart';
import 'event_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynconf 2022"),
      ),
      body: Center(

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
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style:const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
                padding: MaterialStatePropertyAll(EdgeInsets.all(20))
              ),
              onPressed: () {
                Navigator.push(
                  context, 
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const EventPage()
                    ),
                  );
              } , 
              label:const Text("Afficher le planning",
              style:TextStyle(
                fontSize: 20
              ) ,
              ),
              icon: const Icon(Icons.calendar_month),
              ),
          ],
        ),
      ),
    );
  }
}