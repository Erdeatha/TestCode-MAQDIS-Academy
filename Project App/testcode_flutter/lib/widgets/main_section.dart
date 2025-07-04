import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.orange[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            children: [
              Icon(Icons.menu_book, color: Colors.orange),
              SizedBox(width: 12),
              Expanded(
                child: Text('Mulai perjalanan hafalan Quranmu bersama Hamim'),
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.orange),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.menu_book, color: Colors.orange),
                  ),
                  const SizedBox(height: 8),
                  const Text('Sambung Bacaan'),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.chat, color: Colors.orange),
                  ),
                  const SizedBox(height: 8),
                  const Text('Cek Bacaan'),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Hanya Untukmu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('Selengkapnya', style: TextStyle(color: Colors.orange)),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                width: 160,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('Promo ${index + 1}')),
              );
            },
          ),
        ),
      ],
    );
  }
}
