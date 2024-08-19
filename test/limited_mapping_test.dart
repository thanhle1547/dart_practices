/// Cho một danh sách (List) các từ khóa (keywords) mà người dùng tìm kiếm,
/// thực hiện tạo model (convert) với mỗi từ khóa này. Từ khóa được đưa
/// vào model [TextSpan]. Số lượng các từ khóa được convert là có giói hạn.
///
/// Ví dụ:
///
/// * Nếu giới hạn là 5 mà có 10 keywords thì chỉ có 5 keywords được
/// convert.
/// * Nếu giới hạn là 5 mà có 3 keywords thì chỉ có 3 keywords được
/// convert.
/// * Nếu giới hạn là 5 mà có 5 keywords thì cả 5 keywords được
/// convert.

import 'package:dart_practices/limited_mapping.dart';
import 'package:test/test.dart';

void main() {
  test('create 5 TextSpans from 10 keywords', () {
    final List<TextSpan> actualResult = buildLimitedTextSpans(
      ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'],
      5,
    );
    final List<TextSpan> expectResult = [
      TextSpan('a'),
      TextSpan('b'),
      TextSpan('c'),
      TextSpan('d'),
      TextSpan('e'),
    ];

    expect(actualResult, expectResult);
  });

  test('create 5 TextSpans from 3 keywords', () {
    final List<TextSpan> actualResult = buildLimitedTextSpans(
      ['a', 'b', 'c'],
      5,
    );
    final List<TextSpan> expectResult = [
      TextSpan('a'),
      TextSpan('b'),
      TextSpan('c'),
    ];

    expect(actualResult, expectResult);
  });

  test('create 5 TextSpans from 5 keywords', () {
    final List<TextSpan> actualResult = buildLimitedTextSpans(
      ['a', 'b', 'c', 'd', 'e'],
      5,
    );
    final List<TextSpan> expectResult = [
      TextSpan('a'),
      TextSpan('b'),
      TextSpan('c'),
      TextSpan('d'),
      TextSpan('e'),
    ];

    expect(actualResult, expectResult);
  });
}
