import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, // Mengubah warna AppBar menjadi tosca
        foregroundColor: Colors.white, // Mengubah warna teks dan ikon menjadi putih
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal, // Mengubah warna background header menjadi tosca
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.teal.shade700,
                    Colors.teal.shade500,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.tealAccent, // Menambahkan border color
                  ),
                  SizedBox(height: 16),
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.teal), // Mengubah warna ikon
                      title: Text(
                        'Username',
                        style: TextStyle(
                          color: Colors.teal.shade800, // Mengubah warna judul
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(username),
                    ),
                  ),
                  SizedBox(height: 8),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.teal), // Mengubah warna ikon
                      title: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.teal.shade800, // Mengubah warna judul
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('admin@email.com'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.favorite, color: Colors.teal), // Mengubah warna ikon
                      title: Text(
                        'Favorite Recipes',
                        style: TextStyle(
                          color: Colors.teal.shade800, // Mengubah warna judul
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('5 recipes'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: Icon(Icons.star, color: Colors.teal), // Mengubah warna ikon
                      title: Text(
                        'Rating',
                        style: TextStyle(
                          color: Colors.teal.shade800, // Mengubah warna judul
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('4.5/5.0'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}