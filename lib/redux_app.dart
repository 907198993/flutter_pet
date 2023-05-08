

import 'package:flutter/material.dart';
import 'package:flutter_pet/redux/tk_store.dart';
import 'package:flutter_pet/redux/utils/func_utils.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ReduxApp extends StatefulWidget {
  const ReduxApp({Key? key}) : super(key: key);

  @override
  State<ReduxApp> createState() => _ReduxAppState();
}

class _ReduxAppState extends State<ReduxApp> {
  //初始化state
  final store = Store<TKState>(
    appReducer,
    initialState: TKState(themeData: FunUtils.getThemeData(0))
  );


  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreBuilder<TKState>(
        builder: (context,store){
          return MaterialApp(
            title: '麻花宠物',
            theme: store.state.themeData,
            initialRoute: ,
          );
        },
      ),
    );
  }
}
