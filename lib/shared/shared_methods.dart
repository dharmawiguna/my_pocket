import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';

void showCustomSnackBar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 3),
  ).show(context);
}

String formatCurrency(
  num number, {
  String symbol = 'Rp ',
}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}

//tambahkan Future apabila function menggunakan async

Future<XFile?> selectImage() async {
  XFile? selectedImage = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  );

//   Exception has occurred.
// PlatformException (PlatformException(channel-error, Unable to establish connection on channel., null, null))

  return selectedImage;
}
