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
              ],
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: textTheme.bodyMedium!.copyWith(
                  color: colorScheme.onPrimary.withAlpha(200),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: colorScheme.onPrimary,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: colorScheme.onPrimaryContainer.withAlpha(100), //sc15
              ),
            ),
          ),
        ),
      ),
    );
  }
}
