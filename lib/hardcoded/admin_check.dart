
import 'package:ecommerce_app/domain/entities/user.dart';

class AdminCheck{
  static bool isAdmin(OOGLOOUser user){
    String uID = '';
    user.uID.value.map((r) => uID = r
    );
    if(user.emailAddress == "admin@admin.com" && uID == 'k2R4EceYTdNoIoHLrq3BONQVW8s2'){
      return true;
    }
    return false;
  }

}