


import 'package:logger/logger.dart';

var _logger = Logger();

void logI(String tag, String msg) {
  _logger.log(Level.info, "$tag:: $msg");
}

void logE(String tag, String msg) {
  _logger.log(Level.error, "$tag::  $msg");
}

void logD(String tag, String msg) {
  _logger.log(Level.debug, "$tag:: $msg");
}
void tagPrint(String tag, String msg) {
  print("$tag:: $msg");
}