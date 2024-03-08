import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  const String url = 'https://annas-archive.org/search?q=Killers+of+a+certain+age+';
  const String savePath = 'examplefile.txt';

  try {
    
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      File(savePath).writeAsBytesSync(response.bodyBytes);
      print('File downloaded successfully!');
    } else {
      print('Failed to download file: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
