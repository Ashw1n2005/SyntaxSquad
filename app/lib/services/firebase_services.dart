import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addDocument(String collection, Map<String, dynamic> data) async {
    try {
      await _db.collection(collection).add(data);
    } catch (e) {
      print("Error adding document: $e");
      throw e;
    }
  }

  Future<List<Map<String, dynamic>>> getDocuments(String collection) async {
    try {
      QuerySnapshot snapshot = await _db.collection(collection).get();
      return snapshot.docs.map((doc) => {"id": doc.id, ...doc.data() as Map<String, dynamic>}).toList();
    } catch (e) {
      print("Error fetching documents: $e");
      throw e;
    }
  }

  Future<Map<String, dynamic>?> getDocumentById(String collection, String id) async {
    try {
      DocumentSnapshot doc = await _db.collection(collection).doc(id).get();
      if (doc.exists) {
        return {"id": doc.id, ...doc.data() as Map<String, dynamic>};
      }
      return null;
    } catch (e) {
      print("Error fetching document: $e");
      throw e;
    }
  }

  Future<void> updateDocument(String collection, String id, Map<String, dynamic> data) async {
    try {
      await _db.collection(collection).doc(id).update(data);
    } catch (e) {
      print("Error updating document: $e");
      throw e;
    }
  }

  Future<void> deleteDocument(String collection, String id) async {
    try {
      await _db.collection(collection).doc(id).delete();
    } catch (e) {
      print("Error deleting document: $e");
      throw e;
    }
  }
}
