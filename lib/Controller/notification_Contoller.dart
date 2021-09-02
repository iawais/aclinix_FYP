

import 'package:aclinix/Models/Notifications.dart';

class NotificationsController{

  static dynamic _this;

  factory NotificationsController(){
    if(_this == null)
      return NotificationsController._();
    return _this;
  }

  NotificationsController get con => _this;

  NotificationsController._(){

    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointmentyou have an appointmentyou have an appointmentyou have an appointmentyou have an appointmentyou have an appointment"));
    reportList.add(new NotificationModel(title: "Tip",message: "Eat Drink & Stay Healthy"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));
    reportList.add(new NotificationModel(title: "Tip",message: "Eat Drink & Stay Healthy"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));
    reportList.add(new NotificationModel(title: "Tip",message: "Eat Drink & Stay Healthy"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));
    reportList.add(new NotificationModel(title: "Tip",message: "Eat Drink & Stay Healthy"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));
    reportList.add(new NotificationModel(title: "Tip",message: "Eat Drink & Stay Healthy"));
    reportList.add(new NotificationModel(title: "Appointment",message: "you have an appointment"));

  }

  var reportList = [];

  Future<dynamic> getReportList()async{
    return reportList;
  }

}