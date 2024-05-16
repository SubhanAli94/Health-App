import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:health_app/shared/widgets/avatars/circle_avatar_with_text_label.dart';
import 'package:health_app/shared/widgets/list_tiles/doctor_list_tile.dart';
import 'package:health_app/shared/widgets/titles/section_titles.dart';
import 'package:models/models.dart';

import '../shared/widgets/bottom_nav_bars/main_nav_bar.dart';
import '../shared/widgets/cards/appointment_preview_card.dart';
import '../state/home/home_bloc.dart';

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
        backgroundColor: colorTheme.primary.withOpacity(0.15),
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
                style:
                    textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
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
                    color: colorTheme.primary,
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
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == HomeStatus.initial ||
              state.status == HomeStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status == HomeStatus.error) {
            return const Center(child: Text('Something went wrong'));
          }

          return const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _DoctorCategories(),
                  SizedBox(height: 10),
                  _MySchedule(),
                  SizedBox(height: 24),
                  _NearbyDoctors(),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const MainNavBar(),
    );
  }
}

class _DoctorCategories extends StatelessWidget {
  const _DoctorCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            ///Title
            SectionTitles(
              text: 'Categories',
              action: 'See All',
            ),

            Container(
              constraints: const BoxConstraints(maxHeight: 85),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.doctorCategories.length,
                itemExtent: 90,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CircleAvatarWithTextLabel(
                        icon: state.doctorCategories[index].icon,
                        label: state.doctorCategories[index].name,
                        onTap: () {}),
                  );
                },
              ),
            )

            ///
            /// Icons
          ],
        );
      },
    );
  }
}

class _MySchedule extends StatelessWidget {
  const _MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(children: [
          SectionTitles(
            text: 'My Schedules',
            action: 'See All',
            onPressed: () {},
          ),
          AppointmentPreviewCard(appointment: state.myAppointments.firstOrNull)
        ]);
      },
    );
  }
}

class _NearbyDoctors extends StatelessWidget {
  const _NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(children: [
          SectionTitles(
            text: 'Nearby Doctors',
            action: 'See All',
            onPressed: () {},
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.nearbyDoctors.length,
            separatorBuilder: (context, index) => Divider(
              height: 24.0,
              color: colorTheme.surfaceContainerHighest,
            ),
            itemBuilder: (context, index) {
              return DoctorListTile(doctor: state.nearbyDoctors[index]);
            },
          )
        ]);
      },
    );
  }
}
