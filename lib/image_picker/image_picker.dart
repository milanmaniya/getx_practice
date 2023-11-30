import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/image_picker/controller/image_picker_controller.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  final instance = Get.find<ImagePickerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => instance.selectedImagePath.value == ''
                    ? const Text(
                        'Select image from camera/ gallery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : Image.file(
                        File(instance.selectedImagePath.value),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  instance.selectedImageSize.value == ''
                      ? ''
                      : 'Size: ${instance.selectedImageSize.value}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => instance.getImage(ImageSource.camera),
                child: const Text('Pick Image for camera'),
              ),
              ElevatedButton(
                onPressed: () => instance.getImage(ImageSource.gallery),
                child: const Text('Pick Image for gallery'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
