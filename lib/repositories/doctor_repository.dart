import 'package:models/models.dart';

class DoctorRepository {
  const DoctorRepository(
      //Inject the required dependencies
      // e.g. class to connect with the db.
      );

  Future<List<DoctorCategory>> fetchDoctorCategories() async {
    // TODO: Get this data from API.
    await Future.delayed(const Duration(milliseconds: 2000));
    return DoctorCategory.values;
  }

  Future<List<Doctor>> fetchDoctors() async {
    // TODO: Get Doctors data from API.
    await Future.delayed(const Duration(milliseconds: 2000));
    return Doctor.sampleDoctors;
  }

  Future<List<Doctor>> fetchDoctorByCategory(String categoryId) async {
    // TODO: Get DoctorByCategory data from API.
    await Future.delayed(const Duration(milliseconds: 2000));
    throw UnimplementedError();
  }

  Future<List<Doctor>> fetchDoctorById(String doctorId) async {
    // TODO: Get DoctorById data from API.
    throw UnimplementedError();
  }
}
