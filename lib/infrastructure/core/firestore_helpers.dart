import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';

import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore{

  DocumentReference userDocument(){
    final userDoc = FirebaseFirestore.instance.collection('users').doc('k2R4EceYTdNoIoHLrq3BONQVW8s2');
    return userDoc;
  }

}
extension DocumentReferenceX on DocumentReference{

  CollectionReference get productCollection => collection('products');

}
