/// Giving a List of number or any type data. Remove all the duplicate items and
/// return the List.
///
/// Example: [1, 2, 4, 3, 4, 1] -> [1, 2, 4, 3]

import 'package:dart_practices/remove_duplicates.dart';
import 'package:test/test.dart';

void main() {
  test('sum of all of the positives integers', () {
    expect(
      removeDuplicates([1, 2, 4, 3, 4, 1]),
      [1, 2, 4, 3],
    );
  });
}
