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

class TextSpan implements Comparable<TextSpan> {
  final String data;

  TextSpan(this.data);

  @override
  int get hashCode => data.hashCode;

  @override
  bool operator ==(Object other) => other is TextSpan && data == other.data;

  @override
  int compareTo(TextSpan other) => data.compareTo(other.data);
}

List<TextSpan> buildLimitedTextSpans(List<String> keywords, int limit) {
  throw UnimplementedError();
}
