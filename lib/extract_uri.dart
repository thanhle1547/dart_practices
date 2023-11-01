/// Cho một đoạn văn bản, thực hiện tách các đường link web, email ra một List.
/// Riêng đối với các email thì phải bổ sung tiền tố `mailto:` vào kết quả.
///
/// Ví dụ:
///
/// **Input đầu vào:**
///
/// Cho đoạn văn: `Create email to example@gmail.com in the default email app.
/// See https://example.com/ for email examples`
///
/// **Output kết quả đầu ra:**
///
/// `["mailto:example@gmail.com", "https://example.com/"]`

List<String> extractUri(String text) {
  throw UnimplementedError();
}
