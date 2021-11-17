import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../my_theme_data.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    AppConfigProvider provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.setNewMode(ThemeMode.light);
              },
              child: showMainDesign(AppLocalizations.of(context)!.light,
                  provider.mode == ThemeMode.light)),
          InkWell(
              onTap: () {
                provider.setNewMode(ThemeMode.dark);
              },
              child: showMainDesign(AppLocalizations.of(context)!.dark,
                  provider.mode == ThemeMode.dark)),
        ],
      ),
    );
  }

  Widget showMainDesign(String theme, bool selected) {
    if (selected) {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              theme,
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
          theme,
        ));
  }
}
