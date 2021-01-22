import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';

import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore{

  DocumentReference adminDocument(){
    final adminDoc = FirebaseFirestore.instance.collection('users').doc('k2R4EceYTdNoIoHLrq3BONQVW8s2');
    return adminDoc;
  }

  DocumentReference userDocument(String id){
    final userDoc = FirebaseFirestore.instance.collection('users').doc(id);
    return userDoc;
  }

}




extension DocumentReferenceX on DocumentReference{

  CollectionReference get productCollection => collection('products');
  CollectionReference get userDataCollection => collection('user_data');

}
