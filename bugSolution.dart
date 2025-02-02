```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (var item in data) {
        // Check if the 'id' field exists and is an integer
        final id = item['id'];
        if (id is int) {
          print('Item ID: $id');
        } else {
          print('Invalid or missing id for item: $item');
          //Handle the missing or invalid data accordingly, e.g. logging or skipping
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Implement more sophisticated error logging and reporting.
  }
}
```