# community_material_icon

A [community material design icon](https://materialdesignicons.com) as set of Flutter Icons

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
  community_material_icon: 3.7.95
```

## Usage

```dart
import 'package:community_material_icon/community_material_icon.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return new IconButton(
      icon: new Icon(CommunityMaterialIcons.alarm),
      onPressed: () { print("Pressed"); }
     );
  }
}
```