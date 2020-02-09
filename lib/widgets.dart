import 'package:flutter/material.dart';
import 'model.dart';

class Widgets {
  GetASet parts;
  Widgets(this.parts);
  
  Widget button(GlobalKey<FormState> keys) {
    return RaisedButton(
        child: Text("press"),
        onPressed: () {
          keys.currentState.save();
          print(parts.str_name);
        });
  }

  Widget field(Function saver) {
    return TextFormField(
      onSaved: saver,
    );
  }

  Widget layout({GlobalKey<FormState> globalKey, List<Widget> theWidgets}) {
    return Form(
        key: globalKey,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: theWidgets),
        ));
  }
}

