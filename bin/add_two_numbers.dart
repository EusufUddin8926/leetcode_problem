void main() {
  List<int> l1 = [2, 4, 3];
  List<int> l2 = [5, 6, 4];

  // Convert lists to ListNode
  ListNode? node1 = createListNode(l1);
  ListNode? node2 = createListNode(l2);

  // Perform addition
  ListNode? result = addTwoNumbers(node1, node2);

  while (result?.value != null) {
    print(result?.value);
    result = result?.next;
  }
}

class ListNode {
  int value;
  ListNode? next;

  ListNode(this.value, [this.next]);
}

// Converts a List<int> to a ListNode
ListNode? createListNode(List<int> values) {
  if (values.isEmpty) return null;

  ListNode head = ListNode(values[0]);
  ListNode current = head;

  for (int i = 1; i < values.length; i++) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }

  return head;
}

// Adds two numbers represented as linked lists
ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode result = ListNode(0);
  int carry = 0;
  ListNode cur = result;

  while (l1 != null || l2 != null || carry != 0) {
    int sum = (l1?.value ?? 0) + (l2?.value ?? 0) + carry;
    carry = sum ~/ 10;
    cur.next = ListNode(sum % 10);
    cur = cur.next!;
    l1 = l1?.next;
    l2 = l2?.next;
  }

  return result.next;
}
