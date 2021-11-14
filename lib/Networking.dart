import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Future<String> get_movie(String movieName) async {
    String url =
        'https://movie-recommendation-api1.herokuapp.com/recommendation/$movieName';
    String rec = "";

    var data = await call(url);

    if (data != null) {
      data.keys.forEach((key) {
        rec+=data[key] + '\n';
      });
      return rec;
    }

    return "No Recommendations Found";
  }

  Future call(String url) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return (jsonDecode(response.body));
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
