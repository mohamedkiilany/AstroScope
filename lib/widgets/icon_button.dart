import 'package:flutter/material.dart';

class IconButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const IconButtom({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}

//  Widget _iconButton(IconData icon, {required VoidCallback onTap}) {
//     return
//   }
