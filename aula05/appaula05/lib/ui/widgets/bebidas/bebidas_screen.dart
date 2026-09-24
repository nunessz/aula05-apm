import 'package:appaula04/data/drinks_data.dart';
import 'package:appaula04/data/restaurant_data.dart';
import 'package:appaula04/model/dish.dart';
import 'package:appaula04/model/restaurant.dart';
import 'package:appaula04/ui/_core/app_colors.dart';
import 'package:appaula04/ui/_core/appbar.dart';
import 'package:appaula04/ui/widgets/bebidas/widget/drink_widget.dart';
import 'package:appaula04/ui/widgets/home/widget/restaurant_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Tela da categoria Bebidas
class BebidasScreen extends StatelessWidget {
  const BebidasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Restaurantes que trabalham com a categoria Bebidas
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    List<Restaurant> restaurantsWithDrinks = restaurantData.listRestaurant
        .where((restaurant) => restaurant.categories.contains('Bebidas'))
        .toList();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: getAppBar(context: context, title: 'Bebidas'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Center(
              child: Image.asset(
                'assets/categories/bebidas.png',
                height: 96,
              ),
            ),
            Text(
              'Mais pedidas',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              spacing: 12,
              children: List.generate(DrinksData.listDrinks.length, (index) {
                Dish drink = DrinksData.listDrinks[index];
                return DrinkWidget(drink: drink);
              }),
            ),
            SizedBox(height: 8),
            Text(
              'Restaurantes com bebidas',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              spacing: 16,
              children: List.generate(restaurantsWithDrinks.length, (index) {
                return RestaurantWidget(restaurant: restaurantsWithDrinks[index]);
              }),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
