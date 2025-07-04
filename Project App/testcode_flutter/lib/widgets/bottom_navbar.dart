import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navItem(Icons.home, 'Beranda', () => print("Beranda clicked")),
            _navItem(
              Icons.volunteer_activism,
              'Donasi',
              () => print("Donasi clicked"),
            ),
            const SizedBox(width: 40), // Space for FAB
            _navItem(Icons.event, 'Acara', () => print("Acara clicked")),
            _navItem(Icons.menu, 'Lainnya', () => print("Lainnya clicked")),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
