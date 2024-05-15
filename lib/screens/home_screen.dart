import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:health_app/shared/widgets/avatars/circle_avatar_with_text_label.dart';
import 'package:health_app/shared/widgets/titles/section_titles.dart';
import 'package:models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Create a bloc and provide it to the HomeView
    return HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    /// Create the HomeView UI
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorTheme.primary.withOpacity(0.1),
          toolbarHeight: 80,
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: textTheme.bodyMedium,
                ),
                Text(
                  'Subhan Ali',
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
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
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined)),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [_DoctorCategories()],
            ),
          ),
        ));
  }
}

class _DoctorCategories extends StatelessWidget {
  const _DoctorCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Title
        SectionTitles(
          text: 'Categories',
          action: 'See All',
        ),

        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DoctorCategory.values.length,
              itemExtent: 90,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: CircleAvatarWithTextLabel(
                      icon: DoctorCategory.values[index].icon,
                      label: DoctorCategory.values[index].name,
                      onTap: () {}),
                );
              }),
        )

        ///
        /// Icons
      ],
    );
  }
}
