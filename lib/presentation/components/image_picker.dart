import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
class ImagePickerUtility{

  static Future<File> pickImageFromGallery()async{
    print("Picked Image Called!");
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery,imageQuality: 80);
    if(pickedImage != null){
      return File(pickedImage.path);
    }
    return null;

  }





}
