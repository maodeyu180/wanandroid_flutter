import 'package:flutter/material.dart';
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

class CommonUtils {
  static Future<dynamic> showNoticeDialog(BuildContext context, String msg) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Notice'),
            content: Text(msg),
            actions: [
              TextButton(
                onPressed: () {Navigator.of(context).pop();},
                child: Text('OK'),
              ),
            ],
          );
        });
  }
}
