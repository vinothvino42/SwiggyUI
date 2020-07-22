import 'package:flutter/material.dart';

class UIHelper {
  static const double _VerticalSpaceExtraSmall = 4.0;
  static const double _VerticalSpaceSmall = 8.0;
  static const double _VerticalSpaceMedium = 16.0;
  static const double _VerticalSpaceLarge = 24.0;
  static const double _VerticalSpaceExtraLarge = 48;

  static const double _HorizontalSpaceExtraSmall = 4;
  static const double _HorizontalSpaceSmall = 8.0;
  static const double _HorizontalSpaceMedium = 16.0;
  static const double _HorizontalSpaceLarge = 24.0;
  static const double _HorizontalSpaceExtraLarge = 48.0;

  static SizedBox verticalSpaceExtraSmall() =>
      verticalSpace(_VerticalSpaceExtraSmall);
  static SizedBox verticalSpaceSmall() => verticalSpace(_VerticalSpaceSmall);
  static SizedBox verticalSpaceMedium() => verticalSpace(_VerticalSpaceMedium);
  static SizedBox verticalSpaceLarge() => verticalSpace(_VerticalSpaceLarge);
  static SizedBox verticalSpaceExtraLarge() =>
      verticalSpace(_VerticalSpaceExtraLarge);

  static SizedBox verticalSpace(double height) => SizedBox(height: height);

  static SizedBox horizontalSpaceExtraSmall() =>
      horizontalSpace(_HorizontalSpaceExtraSmall);
  static SizedBox horizontalSpaceSmall() =>
      horizontalSpace(_HorizontalSpaceSmall);
  static SizedBox horizontalSpaceMedium() =>
      horizontalSpace(_HorizontalSpaceMedium);
  static SizedBox horizontalSpaceLarge() =>
      horizontalSpace(_HorizontalSpaceLarge);
  static SizedBox horizontalSpaceExtraLarge() =>
      horizontalSpace(_HorizontalSpaceExtraLarge);

  static SizedBox horizontalSpace(double width) => SizedBox(width: width);
}
