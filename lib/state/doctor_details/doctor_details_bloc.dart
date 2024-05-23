import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:health_app/repositories/doctor_repository.dart';
import 'package:meta/meta.dart';
import 'package:models/models.dart';

part 'doctor_details_event.dart';
part 'doctor_details_state.dart';

class DoctorDetailsBloc extends Bloc<DoctorDetailsEvent, DoctorDetailsState> {
  final DoctorRepository _doctorRepository;

  DoctorDetailsBloc(DoctorRepository doctorRepository)
      : _doctorRepository = doctorRepository,
        super(DoctorDetailsInitial()) {
    on<LoadDoctorDetailsEvent>(_onLoadDoctorDetails);
  }

  FutureOr<void> _onLoadDoctorDetails(
      LoadDoctorDetailsEvent event, Emitter<DoctorDetailsState> emit) async {
    emit(state.copyWith(status: DoctorDetailsStatus.loading));

    try {
      final doctor = await _doctorRepository.fetchDoctorById(event.doctorId);
      if (doctor == null) {
        emit(state.copyWith(status: DoctorDetailsStatus.error));
      } else {
        emit(
            state.copyWith(status: DoctorDetailsStatus.loaded, doctor: doctor));
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(status: DoctorDetailsStatus.error));
    }
  }
}
