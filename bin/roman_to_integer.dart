void main() {
  Solution2 solution = Solution2();
  print(solution.romanToInt('MCMXCIV'));
}

class Solution {
  int romanToInt(String s) {
    int totalSum = 0;
    String previousChar = '';
    for (int i = 0; i < s.length; i++) {
      if ('$previousChar${s[i]}' == 'IV') {
        totalSum += 3;
      } else if ('$previousChar${s[i]}' == 'IX') {
        totalSum += 8;
      } else if ('$previousChar${s[i]}' == 'XL') {
        totalSum += 30;
      } else if ('$previousChar${s[i]}' == 'XC') {
        totalSum += 80;
      } else if ('$previousChar${s[i]}' == 'CD') {
        totalSum += 300;
      } else if ('$previousChar${s[i]}' == 'CM') {
        totalSum += 800;
      } else if (s[i] == 'I') {
        totalSum += 1;
      } else if (s[i] == 'V') {
        totalSum += 5;
      } else if (s[i] == 'X') {
        totalSum += 10;
      } else if (s[i] == 'L') {
        totalSum += 50;
      } else if (s[i] == 'C') {
        totalSum += 100;
      } else if (s[i] == 'D') {
        totalSum += 500;
      } else if (s[i] == 'M') {
        totalSum += 1000;
      }
      previousChar = s[i];
    }

    return totalSum;
  }
}

class Solution1 {
  int romanToInt(String s) {
    int totalSum = 0;
    String previousChar = '';
    int totalLength = s.length;
    int i = 0;

    while (totalLength > i) {
      if ('$previousChar${s[i]}' == 'IV') {
        totalSum += 3;
      } else if ('$previousChar${s[i]}' == 'IX') {
        totalSum += 8;
      } else if ('$previousChar${s[i]}' == 'XL') {
        totalSum += 30;
      } else if ('$previousChar${s[i]}' == 'XC') {
        totalSum += 80;
      } else if ('$previousChar${s[i]}' == 'CD') {
        totalSum += 300;
      } else if ('$previousChar${s[i]}' == 'CM') {
        totalSum += 800;
      } else if (s[i] == 'I') {
        totalSum += 1;
      } else if (s[i] == 'V') {
        totalSum += 5;
      } else if (s[i] == 'X') {
        totalSum += 10;
      } else if (s[i] == 'L') {
        totalSum += 50;
      } else if (s[i] == 'C') {
        totalSum += 100;
      } else if (s[i] == 'D') {
        totalSum += 500;
      } else if (s[i] == 'M') {
        totalSum += 1000;
      }
      previousChar = s[i];
      i++;
    }

    return totalSum;
  }
}

class Solution2 {
  int romanToInt(String s) {
    //MCMXCIV
    Map<String, int> map = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000};

    int output = 0;
    for (int i = 0; i < s.length; i++) {
      print(i.toString());
      if (i == s.length - 1) {
        output += map[s[i]]!;
        break;
      }
      if (map[s[i]]! < map[s[i + 1]]!) {
        output += map[s[i + 1]]! - map[s[i]]!;
        i++;
      } else {
        output += map[s[i]]!;
      }
    }
    return output;
  }
}
