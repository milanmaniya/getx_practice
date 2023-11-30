import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  static get instance => Get.find<ImagePickerController>();

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          (File(pickedFile.path).lengthSync() / 1024 / 1024).toStringAsFixed(2);
      // first divide 10234 is convert size is kb and seconds devide 1024 is convert size is mb
    } else {
      Get.snackbar(
        'Error',
        'Image is not picked!..',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
