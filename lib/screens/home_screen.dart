import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    /// Create a bloc and provide it to the HomeView
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: textTheme.bodyMedium,
            ),
            Text(
              'Subhan Ali',
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: colorTheme.primary,
                  size: 20,
                ),
                const SizedBox(height: 2),
                Text(
                  'Dubai, UAE',
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 2),
                Icon(
                  Icons.expand_more,
                  color: colorTheme.primary,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          const SizedBox(
            width: 8,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search for doctors...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: colorTheme.onSurfaceVariant,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: colorTheme.surfaceContainerHighest,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
