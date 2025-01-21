```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key may throw an exception
      final value = jsonData['nonExistentKey']; 
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions like network errors
    print('Error: $e');
    // Rethrow the exception to be handled by a higher level
    rethrow; 
  }
}
```