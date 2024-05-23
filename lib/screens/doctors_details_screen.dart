import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/repositories/doctor_repository.dart';
import 'package:health_app/shared/utils/time_of_day_extension.dart';
import 'package:health_app/shared/widgets/buttons/app_icon_button.dart';
import 'package:health_app/state/doctor_details/doctor_details_bloc.dart';
import 'package:models/models.dart';

import '../shared/widgets/cards/doctor_card.dart';

class DoctorsDetailsScreen extends StatelessWidget {
  const DoctorsDetailsScreen({super.key, required this.doctorId});
  final String doctorId;

  @override
  Widget build(BuildContext context) {
    //create the bloc here.
    return BlocProvider(
      create: (context) => DoctorDetailsBloc(
        context.read<DoctorRepository>(),
      )..add(
          LoadDoctorDetailsEvent(doctorId: doctorId),
        ),
      child: const DoctorsDetailsView(),
    );
  }
}

class DoctorsDetailsView extends StatelessWidget {
  const DoctorsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    //Create the UI here.
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: AppIconButton(
          icon: Icons.arrow_back,
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'Doctor Details',
          style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [AppIconButton(icon: Icons.favorite_outline, onTap: () {})],
      ),
      body: BlocBuilder<DoctorDetailsBloc, DoctorDetailsState>(
        builder: (context, state) {
          if (state.status == DoctorDetailsStatus.loading ||
              state.status == DoctorDetailsStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == DoctorDetailsStatus.error) {
            return const Center(
              child: Text('Somethign went wrong.'),
            );
          } else if (state.doctor == null) {
            return const Center(
              child: Text('Doctor not found!'),
            );
          } else {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DoctorCard(doctor: state.doctor!),
                  Divider(
                      height: 32.0, color: colorScheme.surfaceContainerHighest),
                  _DoctorWorkingHours(workingHours: state.doctor!.workingHours)
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class _DoctorWorkingHours extends StatelessWidget {
  final List<DoctorWorkingHours> workingHours;

  const _DoctorWorkingHours({super.key, required this.workingHours});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Working Hours',
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        ListView.separated(
            padding: const EdgeInsets.all(8.0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: workingHours.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(child: Text(workingHours[index].dayOfWeek)),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: colorScheme.onSurface.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      workingHours[index].startTime.toCustomString(),
                      style: textTheme.bodySmall!.copyWith(
                        color: colorScheme.onSurface.withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text('-'),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: colorScheme.onSurface.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      workingHours[index].endTime.toCustomString(),
                      style: textTheme.bodySmall!.copyWith(
                        color: colorScheme.onSurface.withOpacity(.5),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
