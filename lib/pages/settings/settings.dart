import 'package:flutter/material.dart';
import '/theme/theme_service.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:get_storage/get_storage.dart';

class ConfigurationPage extends StatefulWidget {
  ConfigurationPage({Key? key}) : super(key: key);

  @override
  _ConfigurationPageState createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  bool? isSwitched = GetStorage().read('isDarkMode');

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      backgroundColor: Colors.transparent,
      sections: [
        SettingsSection(
          tiles: [
            SettingsTile(
              title: 'Languaje',
              subtitle: 'Español',
              leading: Icon(Icons.language),
              onPressed: (BuildContext context) {},
            ),
            SettingsTile.switchTile(
              title: 'Modo oscuro',
              leading: Icon(Icons.dark_mode),
              switchValue: (isSwitched) ?? false,
              switchActiveColor: Colors.red,
              onToggle: (bool value) {
                setState(
                  () {
                    isSwitched = value;
                    ThemeService().saveThemeMode(isSwitched!);
                    ThemeService().changeTheme();
                    print(isSwitched);
                  },
                );
              },
            ),
            SettingsTile(
              title: 'Oficinas',
              leading: Icon(Icons.apartment_rounded),
              onPressed: (BuildContext context) {},
            ),
            SettingsTile(
              title: 'Preguntas',
              leading: Icon(Icons.contact_support),
              onPressed: (BuildContext context) {},
            ),
            SettingsTile(
              title: 'Acerca de:',
              leading: Icon(Icons.info_outline),
              onPressed: (BuildContext context) {},
            ),
          ],
        ),
      ],
    );
  }
}
