import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)!.settings.arguments as Recipe;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, // Mengubah warna AppBar menjadi tosca
        foregroundColor: Colors.white, // Mengubah warna teks dan ikon menjadi putih
        title: Text('Detail Resep'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Resep
            Image.asset(
              recipe.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            
            // Informasi Utama
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul
                  Text(
                    recipe.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800, // Mengubah warna judul menjadi tosca gelap
                    ),
                  ),
                  SizedBox(height: 8),
                  
                  // Deskripsi
                  Text(
                    recipe.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  // Info Row
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.teal), // Mengubah warna ikon
                      SizedBox(width: 8),
                      Text(recipe.duration),
                      SizedBox(width: 24),
                      Icon(Icons.restaurant_menu, color: Colors.teal), // Mengubah warna ikon
                      SizedBox(width: 8),
                      Text(recipe.difficulty),
                    ],
                  ),
                  
                  // Divider
                  Divider(
                    height: 32,
                    color: Colors.teal.shade200, // Mengubah warna divider
                  ),
                  
                  // Bahan-bahan
                  Text(
                    'Bahan-bahan:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800, // Mengubah warna judul menjadi tosca gelap
                    ),
                  ),
                  SizedBox(height: 8),
                  ...recipe.ingredients.map((ingredient) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: Colors.teal, // Mengubah warna bullet point
                        ),
                        SizedBox(width: 8),
                        Text(
                          ingredient,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )),
                  
                  // Divider
                  Divider(
                    height: 32,
                    color: Colors.teal.shade200, // Mengubah warna divider
                  ),
                  
                  // Langkah-langkah
                  Text(
                    'Cara Membuat:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800, // Mengubah warna judul menjadi tosca gelap
                    ),
                  ),
                  SizedBox(height: 8),
                  ...recipe.steps.asMap().entries.map((entry) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.teal, // Mengubah warna lingkaran nomor
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '${entry.key + 1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            entry.value,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}