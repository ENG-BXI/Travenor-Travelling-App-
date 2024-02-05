import 'package:flutter/material.dart';
import 'package:travenor/main.dart';

double calcsizeH({required Size size, required int num}) {
  return size.height * (num / designHight);
}

double calcsizew({required Size size, required int num}) {
  return size.width * (num / designWidth);
}
