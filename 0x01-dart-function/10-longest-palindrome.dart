bool isPalindrome(String s) {
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String subStr = s.substring(i, j);
      if (isPalindrome(subStr) && subStr.length > longest.length) {
        longest = subStr;
      }
    }
  }

  return longest;
}
