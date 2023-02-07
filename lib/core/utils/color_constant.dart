import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#faf9f9');

  static Color red600 = fromHex('#e94335');

  static Color gray5003f = fromHex('#3f929292');

  static Color blue1007f = fromHex('#7fcad2ff');

  static Color indigoA70019 = fromHex('#19304ffe');

  static Color gray50 = fromHex('#f9f9fa');

  static Color gray2003f = fromHex('#3fe7e7e7');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color greenA700 = fromHex('#11ad33');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#929292');

  static Color gray600 = fromHex('#747474');

  static Color gray5003f01 = fromHex('#3f9a9a9a');

  static Color gray700 = fromHex('#606060');

  static Color gray400 = fromHex('#b7b7b7');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray500 = fromHex('#a4a4a4');

  static Color gray800 = fromHex('#474747');

  static Color gray4003f = fromHex('#3fc5c5c5');

  static Color orange70019 = fromHex('#19cb9200');

  static Color lime800 = fromHex('#ad8111');

  static Color lime900 = fromHex('#ad6e11');

  static Color blueGray4003f = fromHex('#3f868686');

  static Color gray300 = fromHex('#e0e0e0');

  static Color red60087 = fromHex('#87e94335');

  static Color blue50 = fromHex('#e8ecff');

  static Color gray30001 = fromHex('#e3e3e3');

  static Color gray6007f = fromHex('#7f747474');

  static Color greenA40019 = fromHex('#1900cb87');

  static Color gray40001 = fromHex('#c5c5c5');

  static Color gray40002 = fromHex('#c5c3c3');

  static Color bluegray400 = fromHex('#888888');

  static Color gray40003 = fromHex('#c4c4c4');

  static Color gray3003f = fromHex('#3fe6e6e6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
