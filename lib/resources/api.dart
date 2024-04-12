import 'package:exbloc/models/data_model.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

Future fetchDataList() async {
  try {
    final response = await Http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      var value = jsonResponse.map((m) => Datamodel.fromJson(m)).toList();
      print("oknaka");
      return value;
      //return Datamodel.fromJson(json.decode(response.body));
    }
  } catch (error, stacktrace) {
    print("Exception occured: $error stackTrace: $stacktrace");
    // return Datamodel.withError("Data not found / Connection issue");
  }
}
