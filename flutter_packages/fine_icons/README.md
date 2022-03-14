<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# Fine Icons

### Single widget to create 200+ icons

## About

Fine Icons is a widget to design 200+ icons. 
The Fine Icons packages come in different shapes such as square, circle, Rounded Corners, Outside Title and Inside title.
You can create fine icons as an default icon or font awesome icon. You can add images (assets, network or SVG) inside the fine icon or make an image the fine icon. Title can be added outside or inside the fine icon.

## Components of Fine Icons

<br>

| Main Card | Inside Card  | Icon | Title | Image | Custom Widget |
| ------------- |------------- | ------------- | ------------| ------------ | ------------ |
| onTap mainCardAlignmentPosition mainCardCrossAlignmentPosition width </br > height </br > minHeight </br > background </br > elevation </br > elevationShadowColor </br > borderWidth </br > borderColor </br > allSideRadius individualSideRadius | width <br> height <br> background <br> elevation elevationShadowColor borderWidth borderColor allSideRadius individualSideRadius paddingHorizontal paddingVertical  | icon <br> color <br> size <br> paddingHorizontal paddingVertical | display <br> name <br> fontsize <br> color <br> fontFamily <br> fontWeight <br> height <br> fontStyle <br> letterSpacing background titleMinHeight paddingHorizontal paddingVertical titleBottomBorderRadius outsideTitleMaxWidth | imageType <br> image <br> width <br> height <br> borderRadius individualBorderRadius <br> padding | customWidgetInside customWidgetOutside

## Demo


Visit our [website](https://f9it.com/#/packages) to view all models of fine icons. You can copy the code of the fine icon you like by clicking on it and paste the code in your project and import fine icons package to your project.

![](/flutter_packages/images/fineicons.jpg)

![fineicons](https://user-images.githubusercontent.com/74196534/158010097-68ad6f10-d970-48c0-a0a4-0521723a2d9c.jpg)



## How to use

  ```dart
      import 'package:fine_icons/fine_icons.dart';
  ```

create a fine icon widget

  ```dart
      FineIcons(
        allSideRadius: 15,
        cardIcon: CardIcon(
          icon: Icons.add_ic_call,
          color: Colors.black,
          size: 30,
        ),
        cardTitle: CardTitle(
          display: 'outside',
          name: "Add Call",
          fontSize: 14,
        ),
      ),
  ```