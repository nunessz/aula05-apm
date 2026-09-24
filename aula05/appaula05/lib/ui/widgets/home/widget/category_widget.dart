import 'package:appaula04/ui/_core/app_colors.dart';
import 'package:appaula04/ui/widgets/bebidas/bebidas_screen.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.lightBackgroundColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Por enquanto só a categoria Bebidas tem tela própria
          if (category == 'Bebidas') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BebidasScreen()));
          }
        },
        child: SizedBox(
          width: 100,
          height: 100,
          child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/categories/${category.toLowerCase()}.png',
                height: 48,
              ),
              Text(
                category,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
