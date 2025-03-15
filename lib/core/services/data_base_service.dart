abstract class DatabaseService {
  Future<void> addData(String path, Map<String, dynamic> data);

// if api token , if firebase uid , if any services we look about something identify user .
  Future<Map<String, dynamic>> getData({required String path, required String documentId});
}
