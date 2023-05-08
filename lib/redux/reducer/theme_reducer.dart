import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

//主题管理
///创建reducer<state>

final ThemeDataReducer = combineReducers<ThemeData>(
    [TypedReducer<ThemeData, RefreshThemeDataAction>(_refreshTheme)]);

///定义Action操作
ThemeData _refreshTheme(ThemeData themeData, action) {
  themeData = action.themeData;
  return themeData;
}

///定义一个action类
class RefreshThemeDataAction {
  final ThemeData themeData;
  RefreshThemeDataAction(this.themeData);
}
