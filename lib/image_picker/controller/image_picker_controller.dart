import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ImagePickerController extends GetxController {
  // pick image code
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  // cropped code
  var croppedImagePath = ''.obs;
  var croppedImageSize = ''.obs;

  // compress code
  var compressedImagePath = ''.obs;
  var compressedImageSize = ''.obs;

  void getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          (File(pickedFile.path).lengthSync() / 1024 / 1024).toStringAsFixed(
              2); // first divide 10234 is convert size is kb and seconds devide 1024 is convert size is mb

      // cropped Image

      final croppedFile = await ImageCropper().cropImage(
        sourcePath: selectedImagePath.value,
        maxHeight: 512,
        maxWidth: 512,
        cropStyle: CropStyle.rectangle,
        compressFormat: ImageCompressFormat.jpg,
      );

      croppedImagePath.value = croppedFile!.path;
      croppedImageSize.value =
          (File(croppedImagePath.value).lengthSync() / 1024 / 1024)
              .toStringAsFixed(2);

      // compress image
      final dir = Directory.systemTemp;
      final target = "${dir.absolute.path}/temp.jpg";
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        croppedImagePath.value,
        target,
      );
      compressedImagePath.value = compressedFile!.path;
      compressedImageSize.value =
          (File(compressedImagePath.value).lengthSync() / 1024 / 1024)
              .toStringAsFixed(2);

      uploadImage(compressedFile as File);
    } else {
      Get.snackbar(
        'Error',
        'Image is not picked!..',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
  
  void uploadImage(File file) {
    
  }
}
