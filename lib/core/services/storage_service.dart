// Create all the functions for storage functionalities here

class StorageService {

  // BELOW IS AN EXAMPLE FUNCTION
  // static Future<String> uploadPic(String refPath, String imagePath) async {
  //   try {
  //     final id = const Uuid().v4();
  //     File imageFile = File(imagePath);

  //     final storageRef = FirebaseStorage.instance.ref().child("$refPath/$id");
  //     final downloadUrl = await storageRef.putFile(imageFile);
  //     final url = await downloadUrl.ref.getDownloadURL();
  //     return url;
  //   } catch (e) {
  //     debugPrint('Error: $e');
  //     return '';
  //   }
  // }
}