
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
class Networking {


  Networking({this.url});

  String url;

  Future<dynamic> getData() async {


    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var DecodedData = response.body;
      return DecodedData;
    }
    else
      {
        print(response.statusCode);
      }

  }

}