import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> generateResponse(String prompt) async {
  const apiKey = "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";
  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type':'application/json',
      'Authorization':'Bearer $apiKey'
    },
    body: jsonEncode({
      'model':'text-davinci-003',
      'prompt':prompt,
      'max_tokens':2000,
      'temperature':0,
      'top_p':1,
      'frequency_penalty':0.0,
      'presence_penalty': 0.0
    })
  );

  Map<String, dynamic> newResponse = jsonDecode(response.body);
  return newResponse['choices'][0]['text'];
} //Chat GPT API Key: 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