import 'package:flutter/material.dart';

class LibrariesModel {
   String libtitle;
   String phone;
   String location;

  LibrariesModel ({required this.libtitle,required this.phone,required this.location});
}
class MarketModel {
   String marktitle;
   String phone;
   String location;

   MarketModel ({required this.marktitle,required this.phone,required this.location});
}
class RestaurantModel {
   String restitle;
   String phone;
   String location;
   String resimage;

   RestaurantModel ({required this.restitle,required this.phone,required this.location,required this.resimage});
}
class NotificationModel {
   int backcolor;
   int color;
   String text;
   IconData icon;

   NotificationModel ({required this.backcolor,required this.color,required this.text,required this.icon});
}