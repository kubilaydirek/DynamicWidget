import 'package:dnamic_widget/widget_page/widget/dynamic_textfield.dart';
import 'package:flutter/material.dart';

class WidgetPageViewModel extends ChangeNotifier {
  List<DynamicTextField> _dynamicWidgetList = [];

  void addWidget() {
    dynamicWidgetList.add(const DynamicTextField());
    notifyListeners();
  }

  List<DynamicTextField> get dynamicWidgetList => _dynamicWidgetList;
  set dynamicWidgetList(List<DynamicTextField> value) {
    _dynamicWidgetList = value;
    notifyListeners();
  }
}
