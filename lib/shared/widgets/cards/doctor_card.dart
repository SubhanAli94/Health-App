import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class DoctorCard extends StatefulWidget {
  final Doctor doctor;
  final bool showAbout;
  final bool showMoreInformation;

  const DoctorCard({
    super.key,
    required this.doctor,
    this.showAbout = true,
    this.showMoreInformation = true,
  });

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    final moreInformation = [
      {
        'icon': Icons.account_circle_outlined,
        'label': 'Patients',
        'value': widget.doctor.patientCount,
      },
      {
        'icon': Icons.star_border,
        'label': 'Experience',
        'value': '3 years',
      },
      {
        'icon': Icons.favorite_border,
        'label': 'Rating',
        'value': widget.doctor.rating,
      },
      {
        'icon': Icons.numbers,
        'label': 'Reviews',
        'value': widget.doctor.reviewCount,
      }
    ];

    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundColor: colorTheme.onPrimary,
                backgroundImage: NetworkImage(widget.doctor.profileImageUrl),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.doctor.name,
                      style: textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      widget.doctor.category.name,
                      style: textTheme.bodyMedium!
                          .copyWith(color: colorTheme.onSurface),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: colorTheme.secondary.withOpacity(.5),
                          size: 16.0,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          '${widget.doctor.address.city}, ${widget.doctor.address.country}',
                          style: textTheme.bodySmall!.copyWith(
                            color: colorTheme.onSurface.withOpacity(.5),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            height: 32.0,
            color: colorTheme.surfaceContainerHighest,
          ),
          ...widget.showAbout
              ? [
                  Text(
                    'About',
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(widget.doctor.bio,
                      maxLines: showAll ? null : 3,
                      style: textTheme.bodyMedium!.copyWith(
                          color: colorTheme.onSurface.withOpacity(.5))),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAll = !showAll;
                      });
                    },
                    child: Text(
                      showAll ? 'Show Less' : 'Show All',
                      style: textTheme.bodyMedium!
                          .copyWith(color: colorTheme.secondary),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ]
              : [],
          ...widget.showMoreInformation
              ? [
                  Row(
                      children: moreInformation
                          .map((e) => Expanded(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: colorTheme.primary,
                                      foregroundColor: colorTheme.onPrimary,
                                      child: Icon(e['icon'] as IconData),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      e['value'].toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodyLarge!.copyWith(
                                        color: colorTheme.primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      e['label'].toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ))
                          .toList())
                ]
              : []
        ],
      ),
    );
  }
}
