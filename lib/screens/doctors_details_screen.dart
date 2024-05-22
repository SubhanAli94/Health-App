import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/shared/widgets/buttons/app_icon_button.dart';

class DoctorsDetailsScreen extends StatelessWidget {
  const DoctorsDetailsScreen({super.key, required this.doctorId});
  final int doctorId;

  @override
  Widget build(BuildContext context) {
    //create the bloc here.
    return DoctorsDetailsView();
  }
}

class DoctorsDetailsView extends StatelessWidget {
  const DoctorsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
    );
  }
}
