import 'package:flutter/material.dart';

//import 'home_page.dart';
class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Planning du salon"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/doc1.jpg"),
                title: const Text("Nana Romeo (17h30 a 18h )"),
                subtitle: const Text("git blame --no offense"),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
             Card(
              child: ListTile(
                leading: Image.asset("assets/images/doc2.jpg"),
                title: const Text("Hello list view"),
                subtitle: const Text("ffffffff"),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
             Card(
              child: ListTile(
                leading: Image.asset("assets/images/doc3.jpg"),
                title: const Text("Hello list view"),
                subtitle: const Text("ffffffff"),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
