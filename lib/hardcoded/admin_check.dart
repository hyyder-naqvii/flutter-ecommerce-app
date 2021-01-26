
import 'package:ecommerce_app/domain/entities/user.dart';

class AdminCheck{
  static bool isAdmin(OOGLOOUser user){
    if(user.emailAddress.value.getOrElse(null) == "admin@admin.com" && user.uID.value.getOrElse(null) == 'k2R4EceYTdNoIoHLrq3BONQVW8s2'){
      return true;
    }
    return false;
  }

}