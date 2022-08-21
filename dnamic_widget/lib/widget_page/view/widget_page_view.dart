import 'package:dnamic_widget/widget_page/view_model/widget_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetPageView extends StatelessWidget {
  const WidgetPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Widget'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  context.read<WidgetPageViewModel>().addWidget();
                },
                icon: const Icon(Icons.add),
                label: const Text('Ekle'),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: context.watch<WidgetPageViewModel>().dynamicWidgetList.length,
                itemBuilder: (context, index) {
                  return context.read<WidgetPageViewModel>().dynamicWidgetList[index];
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
