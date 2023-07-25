import 'package:flutter/cupertino.dart';

extension SpaceExtendion on BuildContext {
  // Space | Width
  SizedBox get spaceX4 => SizedBox(
        width: MediaQuery.of(this).size.width * 4.0,
      );

  SizedBox get spaceX8 => SizedBox(
        width: MediaQuery.of(this).size.width * 8.0,
      );

  SizedBox get spaceX12 => SizedBox(
        width: MediaQuery.of(this).size.width * 12.0,
      );

  SizedBox get spaceX16 => SizedBox(
        width: MediaQuery.of(this).size.width * 12.0,
      );

  // Space | Height
  SizedBox get spaceY4 => SizedBox(
        width: MediaQuery.of(this).size.height * 4.0,
      );

  SizedBox get spaceY8 => SizedBox(
        width: MediaQuery.of(this).size.height * 8.0,
      );

  SizedBox get spaceY12 => SizedBox(
        width: MediaQuery.of(this).size.height * 12.0,
      );

  SizedBox get spaceY16 => SizedBox(
        width: MediaQuery.of(this).size.height * 12.0,
      );
}
