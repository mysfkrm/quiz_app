import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nama Mahasiswa',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ), // Text
          SizedBox(
            height: 3,
          ), // SizedBox
          Text(
            'NPM Mahasiswa',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ), // Text
          const Text(
  'NPM Mahasiswa',
  style: TextStyle(
    color: Colors.white,
    fontSize: 18,
  ), // TextStyle
), // Text
const SizedBox(height: 20),
// FutureBuilder yang membungkus ListView di dalam Expanded
Expanded(
  child: FutureBuilder<List<User>>(
    future: fetchUsers(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else if (snapshot.hasData) {
        final users = snapshot.data!;
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text(
                user.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ), // TextStyle
              ), // Text
              subtitle: Text(
                user.username,
                style: const TextStyle(
                  color: Color.fromARGB(255, 150, 198, 241),
                  fontSize: 10,
                ), // TextStyle
              ), // Text
            );
          },
        );
      } else {
        return const Center(child: Text('No users found'));
      }
    },
  ),
),
trailing: Text(
  user.email,
  style: const TextStyle(
    color: Colors.white,
    fontSize: 10,
  ), // TextStyle
), // Text
), // ListTile
}, // ListView.builder
else {
  return const Center(child: Text('No users found.'));
}
        ],
      ), // Column
    ); // Center
  }
}
