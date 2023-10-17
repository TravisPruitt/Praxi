import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_socialv/utils/SVColors.dart';

part 'AppStore.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  bool isDarkMode = false;

  @action
  Future<void> toggleDarkMode({bool? value}) async {
    isDarkMode = value ?? !isDarkMode;

    if (isDarkMode) {
      textPrimaryColorGlobal = Colors.white;
      textSecondaryColorGlobal = viewLineColor;

      defaultLoaderBgColorGlobal = Colors.white;
      shadowColorGlobal = Colors.white12;

    } else {
      textPrimaryColorGlobal = textPrimaryColor;
      textSecondaryColorGlobal = textSecondaryColor;

      defaultLoaderBgColorGlobal = Colors.white;
      appButtonBackgroundColorGlobal = SVAppColorPrimary;
      shadowColorGlobal = Colors.black12;

    }
  }
}
