import 'dart:math';

void main() {
  Solution3 solution = Solution3();
  print(solution.longestCommonPrefix(["flower", "flow", "flight"]));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    String output = '';
    String first = '';
    String second = '';
    String last = '';

    for (int i = 0; i < strs.length; i++) {
      if (strs.length > 1) {
        if (i == strs.length - 1) {
          if (output != '') {
            if (strs[i].length > output.length) {
              last = strs[i];
              for (int k = 0; k < last.length; k++) {
                if (k < output.length) {
                  if (last[k] == output[k]) {
                    continue;
                  } else {
                    output = output.replaceRange(k, output.length, '');
                    break;
                  }
                } else {
                  i++;
                  break;
                }
              }
            } else {
              last = output;
              for (int k = 0; k < last.length; k++) {
                if (k < strs[k].length) {
                  if (strs[k] == output[k]) {
                    continue;
                  } else {
                    output = output.replaceRange(k, output.length, '');
                  }
                } else {
                  i++;
                  break;
                }
              }
            }
          } else {
            return output;
          }
        }

        if (i >= strs.length - 1) {
          return output;
        }

        first = strs[i];
        second = strs[i + 1];

        if (first.length > second.length) {
          for (int j = 0; j < first.length; j++) {
            if (j < second.length) {
              if (first[j] == second[j]) {
                if (!output.contains(first[j])) {
                  output = '$output${first[j]}';
                }
              }
            } else {
              i++;
              break;
            }
          }
        } else {
          for (int m = 0; m < second.length; m++) {
            if (m < first.length) {
              if (first[i] == second[i]) {
                if (!output.contains(second[i])) {
                  output = '$output${first[i]}';
                }
              }
            } else {
              i++;
              break;
            }
          }
        }
      }
    }

    return output;
  }
}

//["flower", "flow", "flight"]
class Solution1 {
  String longestCommonPrefix(List<String> strs) {
    String prefixTmp = '';

    for (int i = 0; i < strs.length; i++) {
      String first = strs[i];

      if (i == strs.length - 1) {
        for (int j = 0; j < first.length && j < prefixTmp.length; j++) {
          if (first[j] == prefixTmp[j]) {
            prefixTmp += first[j];
          } else {
            prefixTmp = prefixTmp.replaceRange(j, prefixTmp.length, '');
            break;
          }
        }
        return prefixTmp;
      }

      String second = strs[i + 1];

      for (int j = 0; j < first.length && j < second.length; j++) {
        if (first[j] == second[j]) {
          prefixTmp += first[j];
        } else {
          prefixTmp = prefixTmp.replaceRange(j, prefixTmp.length, '');
          i++;
          break;
        }
      }
    }

    return prefixTmp;
  }
}

class Solution3 {
  String longestCommonPrefix(List<String> strs) {
    String prefixTmp = '';

    strs.sort();

    String f = strs[0];
    String last = strs[strs.length - 1];

    for (int i = 0; i < min(f.length, last.length); i++) {
      if (f[i] != last[i]) {
        break;
      }
      prefixTmp += f[i];
    }

    return prefixTmp;
  }
}
