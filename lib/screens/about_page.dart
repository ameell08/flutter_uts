import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Recipe App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Recipe App adalah aplikasi yang membantu Anda menemukan '
              'dan membuat masakan lezat dengan mudah. Fitur utama aplikasi ini:'
              '\n\n• Koleksi resep lengkap'
              '\n• Langkah-langkah memasak yang detail'
              '\n• Daftar bahan yang diperlukan'
              '\n• Tingkat kesulitan dan waktu memasak'
              '\n• Profil pengguna',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
