//here i accepted General Method For All Apps Not Specific Method

abstract class DatabaseService {
  Future<void> addData(String path, Map<String, dynamic> data , String? documentId);

// if api token , if firebase uid , if any services we look about something identify user .
  Future<Map<String, dynamic>> getData({required String path, required String documentId});
}
