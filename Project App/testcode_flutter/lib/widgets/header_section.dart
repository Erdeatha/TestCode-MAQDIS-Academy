import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Location", style: TextStyle(color: Colors.white70)),
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.white),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  "Kecamatan Buahbatu, Kota Bandung",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: const Icon(Icons.person, color: Colors.orange),
              ),
            ],
          ),
          const Divider(color: Colors.white70, height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Asr',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('15:15', style: TextStyle(color: Colors.white)),
              Text(
                '1 Jam 41 Menit Lagi',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
