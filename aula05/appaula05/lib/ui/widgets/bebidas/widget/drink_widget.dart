import 'package:appaula04/model/dish.dart';
import 'package:appaula04/ui/_core/app_colors.dart';
import 'package:appaula04/ui/widgets/bag_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Card de uma bebida da lista
class DrinkWidget extends StatelessWidget {
  final Dish drink;
  const DrinkWidget({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        spacing: 12,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/${drink.imagePath}',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  drink.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  drink.description,
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                Text(
                  'R\$${drink.price.toStringAsFixed(2)}',
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<BagProvider>().addAllDishes([drink]);
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                  content: Text('${drink.name} adicionado à sacola'),
                  duration: Duration(seconds: 1),
                ));
            },
            icon: Icon(Icons.add_circle, color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
