import 'package:dnamic_widget/widget_page/view/widget_page_view.dart';
import 'package:dnamic_widget/widget_page/view_model/widget_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<WidgetPageViewModel>(create: (_) => WidgetPageViewModel()),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: WidgetPageView(),
    );
  }
}
