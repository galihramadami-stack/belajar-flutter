import 'package:flutter/material.dart';

class Latihan3Widget extends StatelessWidget {
  const Latihan3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> galleryData = [
      {
        'title': 'Karang setra',
        'lokasi': 'Jl. Ripu no. 164, Sukaluyu, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40123',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSVPQID14HFFqyRer7lTXCOJ9uN6CjzWsajPWTODu2ag&s=10',
        'harga': 'Rp 45.000',
      },
      {
        'title': 'Tanah Lot Bali',
        'lokasi': 'Pura Tanah Lot, Kabupaten Tabanan, Bali',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEhKqIz3tNQNTsOeiYpasST81yTYEr75GVnAmCnHYjZw&s=10',
        'harga': 'Rp 75.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 50.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 60.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 55.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 70.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 65.000',
      },
      {
        'title': 'Kepulauan seribu',
        'lokasi': 'Kepulauan Seribu, DKI Jakarta',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLa9PgdbBiXgg404eQWxHn_miyu0gdVNzhrKayUqKpkQ&s=10',
        'harga': 'Rp 50.000',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('cari tempat wisata yang indah dan menarik'),
        backgroundColor: const Color.fromARGB(255, 255, 2, 2),
        foregroundColor: const Color.fromARGB(255, 252, 252, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: galleryData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final item = galleryData[index];

            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      item['image']!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.broken_image, size: 40),
                        );
                      },
                    ),
                  ),

                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.75),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.65),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.amberAccent.withValues(alpha: 0.6),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        item['harga'] ?? 'Gratis',
                        style: const TextStyle(
                          color: Colors.amberAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          item['lokasi']!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
