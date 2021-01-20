import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
class ImagePickerUtility{

  static Future<Uint8List> pickImageFromCamera()async{
    print("Picked Image Called!");
    File _image;
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery,imageQuality: 40);
    if(pickedImage != null){
      _image = File(pickedImage.path);
      return _image.readAsBytes();
    }
    return null;

  }


}
