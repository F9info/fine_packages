library fine_icons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// image type enum
enum ImageType { networkImage, assetImage, svgAssetImage }

/// FineCard class
class FineIcons extends StatelessWidget {
  const FineIcons(
      {Key? key,
        this.onTap,
        this.mainCardAlignmentPosition = MainAxisAlignment.center,
        this.mainCardCrossAlignmentPosition = CrossAxisAlignment.center,
        this.width = 88.0,
        this.height,
        this.minHeight = 88.0,
        this.background = Colors.white,
        this.elevation = 12.0,
        this.elevationShadowColor,
        this.borderWidth = 1,
        this.borderColor = Colors.transparent,
        this.allSideRadius = 0,
        this.individualSideRadius,
        this.cardIcon,
        this.cardImage,
        this.cardTitle,
        this.insideCard,
        this.cardCustomWidget})
      : super(key: key);

  /// Use on tap to navigate to any page or URL
  final VoidCallback? onTap;

  /// Set alignment inside the card using MainAxisAlignment
  final MainAxisAlignment? mainCardAlignmentPosition;

  /// Set alignment inside the card using CrossAxisAlignment
  final CrossAxisAlignment? mainCardCrossAlignmentPosition;

  /// set width for the card
  final double? width;

  /// set height for the card
  final double? height;

  /// set minHeight for the card
  final double? minHeight;

  /// set background colour for the card
  final Color? background;

  /// set elevation(shadow) for the card
  final double? elevation;

  /// set elevation(shadow) colour for the card
  final Color? elevationShadowColor;

  /// set borderWidth for the card
  final double? borderWidth;

  /// set borderColor for the card
  final Color? borderColor;

  /// set radius for all sides of the card
  final double? allSideRadius;

  /// set Individual Radius for each sides of the card
  final IndividualRadius? individualSideRadius;

  /// set the icon inside the card
  final CardIcon? cardIcon;

  /// set the image inside the card
  final CardImage? cardImage;

  /// set the inside or outside title for the card and its properties
  final CardTitle? cardTitle;

  /// set a card inside the main card and set its properties
  final InsideCard? insideCard;

  /// use a custom widget inside or outside the card under card title
  final CardCustomWidget? cardCustomWidget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      child: Column(
        children: [
          Card(
            elevation: elevation,
            color: background,
            shadowColor: elevationShadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: individualSideRadius != null
                  ? BorderRadius.only(
                  topLeft: Radius.circular(individualSideRadius!.topLeft!),
                  topRight:
                  Radius.circular(individualSideRadius!.topRight!),
                  bottomLeft:
                  Radius.circular(individualSideRadius!.bottomLeft!),
                  bottomRight:
                  Radius.circular(individualSideRadius!.bottomRight!))
                  : BorderRadius.circular(allSideRadius!),
              side: BorderSide(width: borderWidth!, color: borderColor!),
            ),
            child: Container(
              width: width,
              height: height,
              constraints: BoxConstraints(
                minHeight: minHeight!,
                minWidth: minHeight!,
              ),
              child: insideIconBackground(),
            ),
          ),
          if (cardTitle?.display == 'outside')
            Column(
              children: [
                SizedBox(height: cardTitle?.iconBottomSpace != 0 ? cardTitle!.iconBottomSpace : 12.0),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: cardTitle!.outsideTitleMaxWidth!),
                  child: buildTitle(),
                ),
              ],
            ),
          if (cardCustomWidget?.customWidgetOutside != null)
            cardCustomWidget!.customWidgetOutside!
        ],
      ),
    );
  }

  /// inside and outside title method
  Widget buildTitle() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: cardTitle!.background,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(cardTitle!.titleBottomBorderRadius!),
          bottomRight: Radius.circular(cardTitle!.titleBottomBorderRadius!),
        ),
      ),
      constraints: BoxConstraints(minHeight: cardTitle!.titleMinHeight!),
      padding: EdgeInsets.symmetric(
          vertical: cardTitle!.paddingVertical!,
          horizontal: cardTitle!.paddingHorizontal!),
      child: Center(
        child: Text(
          cardTitle!.name!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: cardTitle?.color,
            fontSize: cardTitle?.fontSize,
            fontWeight: cardTitle?.fontWeight,
            fontStyle: cardTitle?.fontStyle,
            letterSpacing: cardTitle?.letterSpacing,
            fontFamily: cardTitle?.fontFamily,
            height: cardTitle?.height,
          ),
        ),
      ),
    );
  }

  /// inside card method
  Widget insideIconBackground() {
    if (insideCard?.width != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: insideCard!.paddingHorizontal!,
                vertical: insideCard!.paddingVertical!),
            child: Card(
              elevation: insideCard?.elevation,
              color: insideCard?.background,
              shadowColor: insideCard?.elevationShadowColor,
              shape: RoundedRectangleBorder(
                borderRadius: insideCard?.individualSideRadius != null
                    ? BorderRadius.only(
                    topLeft: Radius.circular(
                        insideCard!.individualSideRadius!.topLeft!),
                    topRight: Radius.circular(
                        insideCard!.individualSideRadius!.topRight!),
                    bottomLeft: Radius.circular(
                        insideCard!.individualSideRadius!.bottomLeft!),
                    bottomRight: Radius.circular(
                        insideCard!.individualSideRadius!.bottomRight!))
                    : BorderRadius.circular(insideCard!.allSideRadius!),
                side: BorderSide(
                    width: insideCard!.borderWidth!,
                    color: insideCard!.borderColor!),
              ),
              child: Container(
                width: insideCard?.width,
                height: insideCard?.height,
                child: checkImageOrIcon(),
              ),
            ),
          ),
          getIconInsideTitle(),
          if (cardCustomWidget?.customWidgetInside != null)
            cardCustomWidget!.customWidgetInside!
        ],
      );
    }
    return Column(
      mainAxisAlignment: mainCardAlignmentPosition!,
      crossAxisAlignment: mainCardCrossAlignmentPosition!,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: cardIcon != null ? cardIcon!.paddingHorizontal! : 0,
              vertical: cardIcon != null ? cardIcon!.paddingVertical! : 0),
          child: checkImageOrIcon(),
        ),
        getIconInsideTitle(),
        if (cardCustomWidget?.customWidgetInside != null)
          cardCustomWidget!.customWidgetInside!
      ],
    );
  }

  /// check image or icon method
  checkImageOrIcon() {
    if (cardImage?.image != null) {
      return getImage();
    } else {
      return getIcon();
    }
  }

  /// card image method
  Widget getImage() {
    return Padding(
      padding: EdgeInsets.all(cardImage!.padding!),
      child: ClipRRect(
        child: getImageType(),
        borderRadius: cardImage?.individualBorderRadius != null
            ? BorderRadius.only(
            topLeft: Radius.circular(
                cardImage!.individualBorderRadius!.topLeft!),
            topRight: Radius.circular(
                cardImage!.individualBorderRadius!.topRight!),
            bottomLeft: Radius.circular(
                cardImage!.individualBorderRadius!.bottomLeft!),
            bottomRight: Radius.circular(
                cardImage!.individualBorderRadius!.bottomRight!))
            : BorderRadius.circular(cardImage!.borderRadius!),
      ),
    );
  }

  /// image type method to show network image or svg image or asset image
  getImageType() {
    switch (cardImage!.imageType) {
      case ImageType.networkImage:
        return Image.network(
          cardImage!.image!,
          width: cardImage!.width,
          height: cardImage!.height,
          fit: BoxFit.cover,
        );
      case ImageType.assetImage:
        return Image.asset(
          cardImage!.image!,
          width: cardImage!.width,
          height: cardImage!.height,
          fit: BoxFit.cover,
        );
      case ImageType.svgAssetImage:
        return SvgPicture.asset(
          cardImage!.image!,
          width: cardImage!.width,
          height: cardImage!.height,
          fit: BoxFit.cover,
        );
    }
  }

  /// card icon method
  Widget getIcon() {
    if (cardIcon?.icon != null) {
      return Icon(
        cardIcon!.icon,
        size: cardIcon!.size,
        color: cardIcon!.color,
      );
    }
    return SizedBox(height: 0);
  }

  /// inside card title method
  Widget getIconInsideTitle() {
    if (cardTitle?.display == 'inside') {
      return Column(
        children: [
          SizedBox(height: cardTitle?.iconBottomSpace != 0 ? cardTitle!.iconBottomSpace : 4.0),
          buildTitle(),
        ],
      );
    }
    return SizedBox(height: 0);
  }
}

/// IndividualRadius class
class IndividualRadius {
  const IndividualRadius(
      {this.topLeft = 0,
        this.topRight = 0,
        this.bottomLeft = 0,
        this.bottomRight = 0});

  /// set topleft radius for the card
  final double? topLeft;

  /// set topright radius for the card
  final double? topRight;

  /// set bottomleft radius for the card
  final double? bottomLeft;

  /// set bottomright radius for the card
  final double? bottomRight;
}

/// CardIcon class
class CardIcon {
  const CardIcon(
      {this.icon,
        this.color = Colors.black,
        this.size = 30.0,
        this.paddingHorizontal = 0,
        this.paddingVertical = 0});

  /// for a number of predefined icons available for material design applications. For customisation use font awesome icons.
  final IconData? icon;

  /// set icon color
  final Color? color;

  /// set icon size
  final double? size;

  /// set horizontal space around the icon
  final double? paddingHorizontal;

  /// set vertical space around the icon
  final double? paddingVertical;
}

/// CardImage class
class CardImage {
  const CardImage(
      {this.imageType = ImageType.networkImage,
        this.image,
        this.width = 30.0,
        this.height = 30.0,
        this.borderRadius = 0,
        this.individualBorderRadius,
        this.padding = 0});

  /// set image type if network(jpg, png, svg, etc...), asset or SVG
  final ImageType imageType;

  /// set image URL or path
  final String? image;

  /// set image width
  final double? width;

  /// set image height
  final double? height;

  /// set image border radius
  final double? borderRadius;

  /// set individual radius for all sides of the image
  final IndividualRadius? individualBorderRadius;

  /// set space around the image
  final double? padding;
}

/// CardTitle class
class CardTitle {
  const CardTitle(
      {this.display,
        this.name,
        this.fontSize = 16.0,
        this.color = Colors.black,
        this.fontFamily,
        this.fontWeight = FontWeight.w700,
        this.height,
        this.fontStyle,
        this.letterSpacing,
        this.background,
        this.titleMinHeight = 0,
        this.paddingHorizontal = 0,
        this.paddingVertical = 0,
        this.iconBottomSpace = 0,
        this.titleBottomBorderRadius = 0,
        this.outsideTitleMaxWidth = 80.0});

  /// set inside or outside display of title. Eg: display: 'inside' for inside display | display: 'outside' for outside display
  final String? display;

  /// set title of the card
  final String? name;

  /// set font size of the title
  final double? fontSize;

  /// set color of the title
  final Color? color;

  /// set font type of the title
  final String? fontFamily;

  /// set font weight of the title
  final FontWeight? fontWeight;

  /// set line height of the title
  final double? height;

  /// set font style of the title
  final FontStyle? fontStyle;

  /// set spacing between letters for the title
  final double? letterSpacing;

  /// set background color for the title
  final Color? background;

  /// set minimum height for the title if background is used for the title
  final double? titleMinHeight;

  /// set horizontal spacing around the title
  final double? paddingHorizontal;

  /// set vertical spacing around the title
  final double? paddingVertical;

  /// set bottom space for icon or image
  final double? iconBottomSpace;

  /// set radius for bottom left and right when background is used for the title
  final double? titleBottomBorderRadius;

  /// set max width for the outside title
  final double? outsideTitleMaxWidth;
}

/// InsideCard class
class InsideCard {
  const InsideCard(
      {this.width = 50.0,
        this.height = 50.0,
        this.background = Colors.white,
        this.elevation = 12.0,
        this.elevationShadowColor,
        this.borderWidth = 0,
        this.borderColor = Colors.transparent,
        this.allSideRadius = 0,
        this.individualSideRadius,
        this.paddingHorizontal = 0,
        this.paddingVertical = 0});

  /// set width for inside card
  final double? width;

  /// set height for inside card
  final double? height;

  /// set background color for inside card
  final Color? background;

  /// set elevation for inside card
  final double? elevation;

  /// set elevation shadow color for inside card
  final Color? elevationShadowColor;

  /// set border width for inside card
  final double? borderWidth;

  /// set border color for inside card
  final Color? borderColor;

  /// set radius for all sides of the inside card
  final double? allSideRadius;

  /// set individual radius for all sides of the inside card
  final IndividualRadius? individualSideRadius;

  /// set horizonatal spacing around the inside card
  final double? paddingHorizontal;

  /// set vertical spacing around the inside card
  final double? paddingVertical;
}

/// CardCustomWidget class
class CardCustomWidget {
  const CardCustomWidget({this.customWidgetInside, this.customWidgetOutside});

  /// set custom widget inside the card under title
  final Widget? customWidgetInside;

  /// set custom widget outside the card under title
  final Widget? customWidgetOutside;
}