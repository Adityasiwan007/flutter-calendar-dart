import 'package:flutter/material.dart';
import 'package:calendarro/calendarro.dart';
class PickerThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: const Text('Picker theme demo')),
      body: Calendarro(
        displayMode: DisplayMode.MONTHS,
        selectionMode: SelectionMode.MULTI,
        startDate: new DateTime.now().subtract(new Duration(days: 30)),
        endDate: new DateTime.now().add(new Duration(days: 30)),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.date_range),
        onPressed: () => Calendarro(
          displayMode: DisplayMode.MONTHS,
          selectionMode: SelectionMode.MULTI,
          startDate: new DateTime.now().subtract(new Duration(days: 30)),
          endDate: new DateTime.now().add(new Duration(days: 30)),
        ),
      ),
    );
  }
}

Color hexToColor(int rgb) => new Color(0xFF000000 + rgb);

class CustomTheme extends Theme {
  //Primary Blue: #335C81 (51, 92, 129)
  //Light Blue:   #74B3CE (116, 179, 206)
  //Yellow:       #FCA311 (252, 163, 17)
  //Red:          #E15554 (255, 85, 84)
  //Green:        #3BB273 (59, 178, 115)

  static Color blueDark = hexToColor(0x335C81);
  static Color blueLight = hexToColor(0x74B3CE);
  static Color yellow = hexToColor(0xFCA311);
  static Color red = hexToColor(0xE15554);
  static Color green = hexToColor(0x3BB273);

  CustomTheme(Widget child)
      : super(
    child: child,
    data: new ThemeData(
      primaryColor: blueDark,
      accentColor: yellow,
      cardColor: blueLight,
      backgroundColor: blueDark,
      highlightColor: red,
      splashColor: green,
    ),
  );
}

void main() {
  runApp(
    new MaterialApp(
      home: new CustomTheme(new PickerThemeDemo()),
    ),
  );
}