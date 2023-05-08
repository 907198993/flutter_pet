


import 'package:flutter/material.dart';
import 'package:flutter_pet/config/main_config.dart';
import 'package:flutter_pet/styles/app_theme.dart';

class FunUtils{

  static getThemeData(int index){
    List<MaterialColor> colorList = TKCommonConfig.getThemeColors();
    return TKTheme.appTheme(isNight:index==1,color: colorList[index]);

  }

}