import 'package:e_learn/Core/Data/constant/Link.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServices {
  static late SharedPreferences _prefs;

  Future<StorageServices> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setPrefs(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  bool checkIsLogin() {
    return getPrefs(AppLinks.STORAGE_USER_TOKEN).toString().isEmpty?false:true;
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  String? getPrefs(String key) {
    return _prefs.getString(key)??"";
  }
}
