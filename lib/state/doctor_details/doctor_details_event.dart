// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'doctor_details_bloc.dart';

class DoctorDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadDoctorDetailsEvent extends DoctorDetailsEvent {
  final String doctorId;
  LoadDoctorDetailsEvent({
    required this.doctorId,
  });

  @override
  List<Object?> get props => [doctorId];
}
