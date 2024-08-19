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
/// phone, disatance

class Model {
  Model({
    required this.language,
    required this.importantWords,
  });

  final String language;
  final Iterable<String> importantWords;
}

Iterable<String> findDifferences(Iterable<Model> input) {
  throw UnimplementedError();
}
