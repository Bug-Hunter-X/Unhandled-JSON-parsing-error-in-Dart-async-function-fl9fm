# Unhandled JSON Parsing Error in Dart Async Function

This repository demonstrates a common error encountered when parsing JSON data in Dart asynchronous functions and provides a solution to handle potential exceptions.

The `bug.dart` file contains code that fetches JSON data from an API, iterates through it and tries to access an `id` field from each item.  It does not gracefully handle cases where the `id` field is missing or isn't an integer, resulting in runtime errors. 

The `bugSolution.dart` demonstrates improved error handling by checking for the presence and type of the `id` field before accessing it. This prevents crashes and allows for more robust data processing. 

## How to reproduce the error:
1. Clone this repository.
2. Run `bug.dart`.  If the JSON data from the specified URL has inconsistencies (missing 'id' or non-integer 'id'), the script will crash.

## Solution:
Refer to the `bugSolution.dart` file for the improved code with proper error handling. The solution uses type checking and null-awareness to safely handle missing or incorrectly typed data.