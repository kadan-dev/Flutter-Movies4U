import 'package:Moviesfree4U/constant/string_const.dart';
import 'package:Moviesfree4U/utils/sp/sp_helper.dart';

class SPManager {
  static void setOnboarding<T>(String isOnBoardingShow) {
    SPHelper.setPreference(StringConst.IS_ON_BOARDING_SHOW, isOnBoardingShow);
  }

  static Future<T> getOnboarding<T>() async {
    var spValue =  SPHelper.getPreference(StringConst.IS_ON_BOARDING_SHOW, '');
    return spValue as T;
  }

  static Future<Set<String>> getAllKeys() async {
    var spValue = await SPHelper.getAllKeys();
    return spValue ;
  }

  static Future<bool> removeKeys() async {
    var spValue = await SPHelper.removeKey(StringConst.IS_ON_BOARDING_SHOW);
    return spValue;
  }

  static Future<bool> clearPref() async {
    var spValue = await SPHelper.clearPreference();
    return spValue;
  }
}
