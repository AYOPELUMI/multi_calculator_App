import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/color.dart';
import '../utils/constants/formatter.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({super.key, required this.item});
  final item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton.icon(
          style: TextButton.styleFrom(
            textStyle: TextStyle(color:Colors.white ),
            backgroundColor: secondaryColor,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ), 
          ),
          onPressed: () => {},
          icon: Icon(Icons.share_outlined,color:whiteBg),
          label: Text('share',style: TextStyle(color:whiteBg)),
        ),
        SizedBox(width:40),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: TextStyle(color: whiteBg),
            backgroundColor: secondaryColor,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ), 
          ),
          onPressed: () => {
            Get.snackbar(
              titleText: Text('${item[0]}',textAlign: TextAlign.center, style:TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w600,
                color: secondaryColor,
              )),
              " "," ",
              messageText: Text('${NairaFormatter.format(item[1])}',textAlign: TextAlign.center, style:TextStyle(
                fontSize:16,
                fontWeight: FontWeight.w400,
                color: secondaryColor,
              )),
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: primaryColor,
              colorText: secondaryColor,
              borderRadius: 10,
              margin: EdgeInsets.all(10),
              duration: Duration(seconds: 5),
            )},
          child: Text('Display Result',style: TextStyle(color: Colors.white),),
        ),
      ]
    );
  }
}