import 'package:logging/logging.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Api{

  String apiKey = "5895ad8bf4c54a8f6a3a17f280536565";
  String hostName = "http://api.openweathermap.org/";
  final Logger log = new Logger("Api");

  Future<Map<String,dynamic>> getWeather(double lat,double lon) async{
    String url = "$hostName/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$apiKey";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }


  Future<Map<String,dynamic>> getForecast(double lat,double lon) async{
    String url = "$hostName/data/2.5/forecast?lat=$lat&lon=$lon&units=metric&appid=$apiKey";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

}