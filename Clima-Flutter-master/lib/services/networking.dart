import 'dart:convert';
import 'package:http/http.dart' as http;
class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async{
    http.Response response=await http.get(url);
    print(response.body);
    if(response.statusCode==200){
      String data=response.body;
      var decodeData=jsonDecode(data);
      print(decodeData);
      return decodeData;
    }else{
      print(response.statusCode);
    }
  }
}