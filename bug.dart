```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data
      for (var item in data) {
        // Access the 'id' field
        final id = item['id']; 
        //Potential error if 'id' is not present in every item or it's not an integer.
        final int itemId = id as int; //Error if 'id' is not an integer
        print('Item ID: $itemId');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Consider more robust error handling such as logging the error.
  }
}
```