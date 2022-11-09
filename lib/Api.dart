import 'package:api_le/post.dart';
import 'package:http/http.dart' as http;

getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://api.publicapis.org/entries');
  var response = await client.get(uri);
  if (response.statusCode == 200) {
    var data = apiFromJson(response.body);
    return data.entries;
  }
}
