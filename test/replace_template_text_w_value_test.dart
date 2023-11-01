/// Cho một mẫu câu đối thoại và một JSON data. Thực hiện tìm và thay thế
/// các từ khoá nằm trong 2 dấu `{{`, `}}` (case sensitive)
/// với data từ JSON theo quy tắc sau:
///
/// * Từ khoá là: `{{male}}` hoặc `nam` -> đổi thành `Anh`
/// * Từ khoá là: `{{female}}` hoặc `nữ` -> đổi thành `Chị`
/// * Từ khoá là: `{{s_name}}` -> đổi từ khoá thành `supporter_name`
/// * Nếu không có value trong JSON ứng với một từ khoá nào đó
/// thì trả về string rỗng
///
/// Ví dụ:
///
/// **Input đầu vào:**
///
/// [template] là `Thao tác mua hàng của {{male}} {{user_full_name}}
/// không thành công. Vui lòng liên hệ theo số {{phone}} để được hỗ trợ
/// (Nhân viên {{s_name}}).{{extra_msg}}`
///
/// [json] là
/// ```json
/// {
///   "user_full_name": "Nguyễn Văn A",
///   "phone": "12345678",
///   "supporter_name": "Trần Thị B"
/// }
/// ```
///
/// **Output kết quả đầu ra:**
///
/// `Thao tác mua hàng của Anh Nguyễn Văn A
/// không thành công. Vui lòng liên hệ theo số 12345678 để được hỗ trợ
/// (Nhân viên Trần Thị B).`

import 'package:dart_practices/replace_template_text_w_value.dart';
import 'package:test/test.dart';

void main() {
  test('replace template text with value from JSON', () {
    expect(
      replaceWithValue(
        'Thao tác mua hàng của {{male}} {{user_full_name}} không thành công. '
        'Vui lòng liên hệ theo số {{phone}} để được hỗ trợ (Nhân viên {{s_name}}).',
        {
          "user_full_name": "Nguyễn Văn A",
          "phone": "12345678",
          "supporter_name": "Trần Thị B",
        },
      ),
      'Thao tác mua hàng của Anh Nguyễn Văn A không thành công. '
      'Vui lòng liên hệ theo số 12345678 để được hỗ trợ (Nhân viên Trần Thị B).',
    );
  });
}
