/// Given a number `n`, return the number of positive odd numbers below `n`, EASY!
///
/// Examples (Input -> Output)
///
/// ```console
/// 7  -> 3 (because odd numbers below 7 are [1, 3, 5])
/// 15 -> 7 (because odd numbers below 15 are [1, 3, 5, 7, 9, 11, 13])
/// ```
///
/// https://www.codewars.com/kata/59342039eb450e39970000a6

import 'package:dart_practices/count_odd_numbers_below_n.dart';
import 'package:test/test.dart';

void main() {
  test('the number of positive odd numbers below 7', () {
    expect(countOddBelow(7), 3);
  });

  test('the number of positive odd numbers below 15', () {
    expect(countOddBelow(15), 7);
  });
}
