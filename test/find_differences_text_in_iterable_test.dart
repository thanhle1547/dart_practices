/// Khi xử lý đa ngôn ngữ, sẽ có một số từ bắt buộc phải được giữ nguyên
/// giữa các bản dịch, không được phép gõ sai, không được phép
/// dịch sang ngôn ngữ khác. Có trường hợp, một số từ chỉ xuất hiện
/// ở một số ngôn ngữ.
///
/// Để phục vụ cho việc tra soát này, ta cần tìm ra các từ bị gõ sai,
/// các từ chỉ suất hiện ở một số ngôn ngữ.
///
/// **Input đầu vào:**
///
/// Một tập các [Model], trong đó chứa danh sách các từ quan trọng.
///
/// **Output kết quả đầu ra:**
///
/// Các từ bị viết sai, bị dịch sang ngôn ngữ khác.
/// KHÔNG CẦN quan tâm việc từ nào là từ gốc.
///
/// Ví dụ:
///
/// **Input đầu vào:**
///
/// - Ở tiếng Việt có các từ: distance, money, email, phone
/// - Ở tiếng Anh có các từ: disatance, money, email
/// - Ở tiếng Hàn có các từ: disatance, money, email
///
/// **Output kết quả đầu ra:**
///
/// number, disatance

import 'package:dart_practices/find_differences_text_in_iterable.dart';
import 'package:test/test.dart';

void main() {
  test('find the differences between Modal', () {
    final Iterable<String> actualResult = findDifferences([
      Model(
        language: 'vi',
        importantWords: [
          'distance',
          'money',
          'email',
          'phone',
        ],
      ),
      Model(
        language: 'en',
        importantWords: [
          'disatance',
          'money',
          'email',
        ],
      ),
      Model(
        language: 'it',
        importantWords: [
          'distance',
          'money',
          'email',
        ],
      ),
    ]);
    final Iterable<String> expectResult = ['disatance'];

    expect(actualResult, expectResult);
  });
}
