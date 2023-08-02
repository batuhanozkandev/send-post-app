import 'package:flutter/cupertino.dart';

extension SpaceExtendion on BuildContext {
  // Space | Width
  SizedBox get xxSmall => SizedBox(
        width: MediaQuery.of(this).size.width * 0.02,
      );

  SizedBox get xSmall => SizedBox(
        width: MediaQuery.of(this).size.width * 0.04,
      );

  SizedBox get xMedium => SizedBox(
        width: MediaQuery.of(this).size.width * 0.08,
      );

  SizedBox get xLarge => SizedBox(
        width: MediaQuery.of(this).size.width * 0.12,
      );

  SizedBox get xHuge => SizedBox(
        width: MediaQuery.of(this).size.width * 0.16,
      );

  // Space | Height
  SizedBox get yySmall => SizedBox(
        height: MediaQuery.of(this).size.height * 0.02,
      );

  SizedBox get ySmall => SizedBox(
        height: MediaQuery.of(this).size.height * 0.04,
      );

  SizedBox get yMedium => SizedBox(
        height: MediaQuery.of(this).size.height * 0.08,
      );

  SizedBox get yLarge => SizedBox(
        height: MediaQuery.of(this).size.height * 0.12,
  );

  SizedBox get yHuge => SizedBox(
    height: MediaQuery.of(this).size.height * 0.16,
  );
}
