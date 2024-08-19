/// You get an array of numbers, return the sum of all of the positives ones.
///
/// Example [1, -4, 7, 12] => 1 + 7 + 12 = 20
///
/// Note: if there is nothing to sum, the sum is default to 0.
///
/// https://www.codewars.com/kata/5715eaedb436cf5606000381

import 'package:dart_practices/sum_of_positive.dart';
import 'package:test/test.dart';

void main() {
  test('sum of all of the positives integers', () {
    expect(calculate([1, -4, 7, 12]), 20);
  });

  test('sum of all of the positives doubles', () {
    expect(calculate([0.0, 3.3, -2.9, -4, 0.7]), 4.0);
  });
}
