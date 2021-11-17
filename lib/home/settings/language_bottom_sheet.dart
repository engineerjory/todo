import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/app_config_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.setNewLanguage('en');
              },
              child: showMainDesign('English', provider.appLanguage == 'en')),
          InkWell(
              onTap: () {
                provider.setNewLanguage('ar');
              },
              child: showMainDesign('العربية', provider.appLanguage == 'ar')),
        ],
      ),
    );
  }

  Widget showMainDesign(String language, bool selected) {
    if (selected) {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              language,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Spacer(),
            Icon(
              Icons.check,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      );
    }
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
        child: Text(
          language,
          textAlign: TextAlign.start,
        ));
  }
}
