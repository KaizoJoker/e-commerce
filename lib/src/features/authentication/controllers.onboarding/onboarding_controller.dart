import 'package:ecommerce_t/src/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  
  //variable
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;


  //Update current index when page scroll
  void updatePageIndicator(index){
    currentPageIndex.value =index;
  }
  

  //Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current index & jump to the next page
  void nextPage(){
    if(currentPageIndex.value==1){
      Get.offAll(const loginScreen());
    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  //update current index & jump to the last page

  void skipPage(){
    //because there is only 2 onbording image
    //jump to last screen
    currentPageIndex.value = 1;
    pageController.jumpTo(1);
  }


}