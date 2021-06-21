import 'package:flutter/cupertino.dart';

class NavbarKey{
  
  NavbarKey._();

  static final GlobalKey _bottomNavigationKey = GlobalKey();
  static GlobalKey getKey()=>_bottomNavigationKey;
}