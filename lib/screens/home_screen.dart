import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
              ], //check
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              isLabelVisible: true,
              label: Text('2'),
              child: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
