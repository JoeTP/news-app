import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors/colors.dart';

class Dim {
  static double screenHeight = Get.context!.height; //834.9090909090909
  static double screenWidth = Get.context!.width; //392.72727272727275

  //we need to get factor that is the result of dividing the screen dimensions by the container dimensions
  // factor = screen/container

  //dynamic dimensions
  static double p5 = screenHeight / 166.9818182;
  static double p10 = screenHeight / 83.49090909;
  static double p15 = screenHeight / 55.66060606;
  static double p20 = screenHeight / 41.74545455;
  static double p25 = screenHeight / 33.39636364;
  static double p30 = screenHeight / 27.83030303;
  static double p35 = screenHeight / 23.85454545;
  static double p40 = screenHeight / 20.87272727;
  static double p45 = screenHeight / 18.55353535;
  static double p50 = screenHeight / 16.69818182;
  static double p70 = screenHeight / 11.92727273;
  static double p75 = screenHeight / 11.13212121;
  static double p80 = screenHeight / 10.43636364;
  static double p85 = screenHeight / 9.822459893;
  static double p90 = screenHeight / 9.276767677;
  static double p95 = screenHeight / 8.788516746;

  //font
  static double f16 = screenHeight / 10;
  static double f34 = screenHeight / 24.55614973;

  //radius
  static double r15 = screenHeight / 55.66060606;
  static double r20 = screenHeight / 41.74545455;

  //icon size
  static double i24 = screenHeight / 5;

  static double? schedHeight;
}

class ImageData {
  String path;
  String title;
  String date;

  ImageData(this.path, this.title, this.date);
}

class Variables {
  static PageController NBController = PageController();
  static int? currentPage;

  List<ImageData> itemList = getImageDataList();

  static List<ImageData> getImageDataList() {
    return [
      ImageData(
          'https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=1380          ',
          'Shinny Sunflower Shinny Sunflower Shinny Sunflower',
          '01-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Awesome Sunflower',
          '01-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Amazing Nature',
          '02-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Bright Sunflower',
          '02-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Pink Flowers',
          '03-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Clear Nature',
          '03-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Fresh Nature',
          '04-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Flying Insect',
          '04-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Natures Gift',
          '05-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Lilly Garden',
          '05-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'Fresh Lilly',
          '06-Jan-2022'),
      ImageData(
          'https://i.pinimg.com/originals/68/68/7b/68687bf74257e86caab58aafddc326a7.jpg',
          'White Lilly',
          '06-Jan-2022'),
    ];
  }
}

