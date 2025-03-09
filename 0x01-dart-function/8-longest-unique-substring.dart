String longestUniqueSubstring(String str) {
  Map<String, int> seen = {};
  int start = 0;
  int maxLength = 0;
  int startIndex = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (seen.containsKey(currentChar) && seen[currentChar]! >= start) {
      start = seen[currentChar]! + 1;
    }

    seen[currentChar] = end;

    int currentLength = end - start + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      startIndex = start;
    }
  }

  return str.substring(startIndex, startIndex + maxLength);
}
