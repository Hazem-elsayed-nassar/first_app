import 'package:flutter/material.dart';
import 'fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Appointments"),
        actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Wednesday, 22 May 2019",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  appointmentItem("Iulian Ruja", "10:50", null),
                  appointmentItem("Victoria Olari", "13:00", null),
                  appointmentItem("Diana Stefan", "15:20", null),
                  appointmentItem("Gheorge Popa", "16:10", null),
                  appointmentItem("Alexandru Sandu", "16:40", Icons.close),
                  appointmentItem("Dumitu Simona", "08:00", Icons.check),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FourthScreen()),
            );
          },
          child: const Text(
            'Go to Next Page',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Widget appointmentItem(String name, String time, IconData? icon) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(name),
        subtitle: Row(
          children: [
            const Icon(Icons.access_time, size: 16),
            const SizedBox(width: 5),
            Text(time),
          ],
        ),
        trailing: icon != null
            ? Icon(icon, color: icon == Icons.check ? Colors.blue : Colors.red)
            : null,
      ),
    );
  }
}
