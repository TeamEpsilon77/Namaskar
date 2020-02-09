import 'package:flutter/material.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:intl/intl.dart';

getYearAndMonth(){
  var year;
  var date = NepaliDateFormat.yMMMM();
  NepaliDateTime currentDate = NepaliDateTime.now();
  year= date.format(currentDate);
  return year;
}
getDay(){
  var day;
  var date = NepaliDateFormat.d();
  NepaliDateTime currentDate = NepaliDateTime.now();
  day= date.format(currentDate);
  return day;
}

getWeekDay(){
  var day;
  var date = NepaliDateFormat.EEEE();
  NepaliDateTime currentDate = NepaliDateTime.now();
  day= date.format(currentDate);
  return day;
}

getAD(){
  var now =  DateTime.now();
  var date;
  date=DateFormat.yMMMMd().format(now);
  return date;
}