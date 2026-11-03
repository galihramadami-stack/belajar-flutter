import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> galleryData = [
      {
        'title': 'iguana',
        'desc': 'iguana adalah hewan reptil yang sering ditemukan di amerika tengah dan selatan. mereka adalah kerabat dekat dari kadal.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmHs_sVqevRddMGq5ub_-pK-2v-HkutkjnkUI1CAUDzA&s=10',
      },
      {
        'title': 'kura kura',
        'desc': 'kura kura snapping turtle atau macrochelys temminckii dikenal sebagai kura-kura pemakan daging dengan gigitan yang sangat kuat.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaeszZUuIwgrYiq6zeEtpyyKAV5ZoPr2CAaP7AzImxA&s=10',
      },
      {
        'title': 'Burung Hantu',
        'desc': 'Burung hantu adalah pemangsa nokturnal yang pandai berburu dalam gelap. sayap mereka tidak menghasilkan suara saat terbang.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ68SXe2ChmYL059gI0SAUG76geo3ZtD9VylKyqDLdO5g&s=10',
      },
      {
        'title': 'Tupai',
        'desc': 'Tupai adalah hewan pengerat yang lincah dan pandai memanjat pohon. mereka memiliki ekor panjang yang membantu menjaga keseimbangan saat melompat.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxKLtSmZNugKwhiBiTSGgH01NnvCX6fdCACG_W53GC-w&s=10',
      },
      {
        'title': 'Ikan marlin',
        'desc': 'Ikan Marlin adalah jenis ikan predatory fast-swimming dengan tubuh ramping dan paruh panjang yang tajam, dia mampu berenang dengan kecepatan tinggi ',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqodlviBvX3ptEyTpaSEwN8ovWu9fCI-gqTfwZzPycQw&s=10',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Satwa langka'),
        backgroundColor: const Color.fromARGB(255, 255, 2, 2),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [

          // SCROLL VERTIKAL
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: galleryData.length,
            itemBuilder: (context, index) {
              final item = galleryData[index];

              return Center(
                child: Container(
                  width: 500,
                  height: 230,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(
                                  Icons.broken_image,
                                  size: 40,
                                ),
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
                                  Colors.black.withOpacity(0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item['desc']!,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // SCROLL HORIZONTAL
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: galleryData.length,
              itemBuilder: (context, index) {
                final item = galleryData[index];

                return Container(
                  width: 500,
                  height: 200,
                  margin: const EdgeInsets.only(
                    right: 12,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(
                                  Icons.broken_image,
                                  size: 40,
                                ),
                              );
                            },
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black54,
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}