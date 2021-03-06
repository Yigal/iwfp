import 'package:flutter/material.dart';
import 'package:iwfpapp/services/config/typedefs/shop_category.dart';
import 'package:iwfpapp/screens/suggestion/entries.dart';
import 'package:iwfpapp/widgets/layouts/preferred_width.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen();
  @override
  Widget build(BuildContext context) {
    ShopCategory category = ShopCategory('Unknown Category', 'unknown');
    if (ModalRoute.of(context).settings.arguments != null) {
      category = ModalRoute.of(context).settings.arguments;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('For ' + category.name + ', I should use ...'),
        key: Key('suggestion_title'),
      ),
      body: PreferredWidthContent(child: SuggestionEntries(category)),
    );
  }
}
