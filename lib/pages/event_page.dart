import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//import 'home_page.dart';
class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
//valeur qui ne change pas
  final events = [];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Events").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (!snapshot.hasData) {
            return const Text("Aucune conference");
          }

          List<dynamic> events = [];

          snapshot.data!.docs.forEach((element) {
            events.add(Element);
          });

          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              final avatar = event['avatar'].toString().toLowerCase();
              final speaker = event['speaker'];
              final date = event['date'];
              final subject = event['subject'];

              return Card(
                child: ListTile(
                  leading: Image.asset("assets/images/$avatar.jpg"),
                  title: Text("$speaker ($date)"),
                  subtitle: Text("$subject"),
                  trailing: const Icon(Icons.info),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
