import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:light_link_practical/models/user_model.dart';

import '../preference_manager.dart';

class AuthSerVice {
  var user = UserModel().obs;
  var isSignedIn = false.obs;

  AuthSerVice() {}

  Future<AuthSerVice> init() async {
    PreferenceManager _pref = PreferenceManager();
    var _user = await _pref.readUser();
    if (_user != null) {
      isSignedIn.value = true;
      user.value = _user;
    }
    return this;
  }
}
