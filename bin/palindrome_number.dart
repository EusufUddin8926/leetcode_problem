void main() {
  Solution solution = Solution();
  print(solution.isPalindrome(-1001));
}

class Solution {
  bool isPalindrome(int x) {
    int r = 0, sum = 0, temp;

    temp = x;

    while (temp > 0) {
      r = temp % 10;
      sum = (sum * 10) + r;
      temp = temp ~/ 10;
    }

    if (sum == x) {
      return true;
    }

    return false;
  }
}

class Solution1 {
  bool isPalindrome(int x) {
    String inputString = x.toString();
    for (int i = 0; i <= inputString.length / 2; i++) {
      if (inputString[i] != inputString[inputString.length - (i + 1)]) {
        return false;
      }
    }
    return true;
  }
}

class Solution2 {
  bool isPalindrome(int x) {
    String inputString = x.toString();

    String tempString = '';

    for (int i = inputString.length - 1; i >= 0; i--) {
      tempString += inputString[i];
    }

    if (tempString == inputString) {
      return true;
    }
    return false;
  }
}
