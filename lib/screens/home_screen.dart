import 'package:flutter/material.dart';
import 'package:models/models.dart';

import '../widgets/app_bottom_nav_bar.dart';
import '../widgets/grocery_search_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final categories = Category.sampleData;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorScheme.primaryContainer,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          centerTitle: true,
          title: Column(
            children: [
              Text(
                'Pickup',
                style: textTheme.bodySmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Location 2',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge! // ! is used to tell the compiler that the value is not null
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.arrow_drop_down),
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                isLabelVisible: true,
                label: Text('3'),
                child: const Icon(Icons.shopping_cart),
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(56.0),
              child: GrocerySearchTextFormField()),
        ),
        bottomNavigationBar: AppBottomNavBar(index: 0),
        body: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Image.network(
                      category.imageUrl!,
                      fit: BoxFit.cover,
                    );
                  }),
            )
          ],
        ));
  }
}
