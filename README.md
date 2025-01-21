# Unhandled JSON Key Exception in Dart

This example demonstrates a common error in Dart when working with JSON responses from external APIs:  accessing a key that might not exist. The `fetchData` function retrieves data from an API, parses the JSON response, and then attempts to access a key, `'nonExistentKey'`, which may not always be present in the JSON data.

If the key is missing, a runtime exception will be thrown. This can lead to application crashes or unexpected behavior.  The solution demonstrates a robust way to avoid these issues.

**Bug:** The `fetchData` function attempts to access the `'nonExistentKey'` without checking if it exists, causing an exception if the key is missing.

**Solution:** The solution uses the `containsKey` method to check if the key exists before attempting to access its value.