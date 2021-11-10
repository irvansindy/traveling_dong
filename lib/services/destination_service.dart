import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelling_dong/models/destination_model.dart';

class DestinationService {
  // ignore: prefer_final_fields
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      // query snapshot digunakan untuk mengambil data list
      QuerySnapshot result = await _destinationRef.get();

      // ignore: unused_local_variable
      List<DestinationModel>? destinations = result.docs.map((e) {
        return DestinationModel.fromJson(
          e.id,
          e.data() as Map<String, dynamic>,
        );
      }).toList();
      return destinations;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
