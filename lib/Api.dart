import 'package:api_le/Apidata.dart';
import 'package:http/http.dart' as http;

// what i did
// 1  paste the link in (quick type.io)-web
// 2 get json.decode data forme the -web
// 3 i pasted the data in Apidata.dart page
// 4 call http

getName() async {
  var client = http.Client();

  var uri = Uri.parse(
      'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false');
  var response = await client.get(uri);
  if (response.statusCode == 200) {
    // body convert to json
    var data = welcomeFromJson(response.body);
    return data;
  }
}
// 5 Go to Home page