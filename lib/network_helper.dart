import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
const String  ApiUrl ='https://rest.coinapi.io/v1/exchangerate';
const String apiKey ='251F51D1-EF79-4089-9CB3-283DC6152148';
 class NetworkHelper{

   Future getData(String currencies) async{
     var url = "$ApiUrl/BTC/$currencies?apiKey=$apiKey";
     var response = await http.get(url);
     if (response.statusCode == 200) {
       var jsonResponse = convert.jsonDecode(response.body);
       return jsonResponse['rate'].toStringAsFixed(0);
     } else {
       print('Request failed with status: ${response.statusCode}.');
     }



   }




 }