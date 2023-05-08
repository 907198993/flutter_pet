


import 'package:flutter/material.dart';
import 'package:flutter_pet/redux/reducer/theme_reducer.dart';
class TKState {

  /// 主题
  ThemeData themeData;

  TKState({
    required this.themeData,
  });

}
TKState appReducer(TKState state,action){
     return TKState(themeData: ThemeDataReducer(state.themeData,action));
}