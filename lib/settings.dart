import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mode.dart';
import 'model.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color:  Theme.of(context).cardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.imagesearch_roller),
              ),
              Expanded(
                child: Text(
                  themeProvider.themeDataStyle == ThemeDataStyle.dark
                      ? 'Custom dark theme'
                      : 'Custom light theme',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(width: 20),
              Transform.scale(
                scale: 0.9,
                child: Switch(
                  value: themeProvider.themeDataStyle == ThemeDataStyle.dark
                      ? true
                      : false,
                  onChanged: (isOn) {
                    themeProvider.changeTheme();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
