import 'dart:async';
import 'package:cookiej/cookiej/net/api.dart';

class ExtraApi{
  ///获取表情
  static Future<List<Map>> getEmotions() async{
    var url='/2/emotions.json';
    var result=(await API.get(url)).data;
    if(result is List<dynamic>){
      List<Map> jsonMap=new List<Map>();
      result.forEach((m){
        jsonMap.add(m);
      });
      return jsonMap;
    }
    else return null;


  }
}