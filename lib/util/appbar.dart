import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget MyAppbar(String texts1) {
  return PreferredSize(
    preferredSize: Size.fromHeight(54),
    child: AppBar(
      backgroundColor: Colors.black,automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("FanTips",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),) ,
          Text("Log in",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.green),)
        ],
      )
      
    ),
  );
}
