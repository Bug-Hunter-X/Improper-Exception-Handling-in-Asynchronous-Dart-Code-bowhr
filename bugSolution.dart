```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //More specific error handling
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    // Handle exceptions more gracefully and provide specific error details
    print('Error fetching data: $e');
    //Optionally, return null or a default value to avoid crashing the application. 
    return null; // Or return a default map, for example:  return {'error': e.toString()};
  }
}
```