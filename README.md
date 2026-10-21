# Power9 Desk Reset — Lab 2 UI/UX

**Sinh viên:** Phạm Quang Đức · **MSSV:** SE182178. **Persona:** Huy, 28 tuổi, lập trình viên văn phòng. Huy là nhân vật giả định để thiết kế, chưa phải kết quả khảo sát.

## Cập nhật Android — 21/10/2026

Bản triển khai hiện tại chạy Flutter trong Android Studio, ở project `power9_desk_reset` riêng. Thư mục `prototype/` bên dưới là prototype web lịch sử. Repository Lab 2 này lưu hồ sơ thiết kế và minh chứng; chưa chứa toàn bộ mã project Flutter.

- [12 ảnh chụp Android và cách tái hiện](assets/android-review-2026-10-21/README.md).
- [Home: lịch đã dời sang 15:40](assets/android-review-2026-10-21/01b-home-timeline-1540.png).
- [Thông báo có nút Hoàn tác](assets/android-review-2026-10-21/02-reschedule-undo.png).
- [Hộp thoại xác nhận khi nhấn Android Back](assets/android-review-2026-10-21/03-back-confirmation.png).
- [Form giữ dữ liệu khi lưu lỗi mô phỏng](assets/android-review-2026-10-21/04-form-save-error-retains-input.png), [trước lưu](assets/android-review-2026-10-21/04b-form-before-save.png), [thử lại thành công](assets/android-review-2026-10-21/04c-form-retry-success.png).
- [Chữ 200% ở 360 dp](assets/android-review-2026-10-21/07-notifications-360dp-font200.png), [khoảng 412 dp](assets/android-review-2026-10-21/06-notifications-412dp-font200.png).
- [Launcher tái hiện lỗi lưu](handoff/ux_evidence_main.dart): chép vào `tool/` trong project Flutter có package `power9_desk_reset` rồi chạy theo hướng dẫn trong file. Launcher dùng dialog và theme thật; lần lưu đầu trả `false`, lần thứ hai trả `true`. Đây không phải ảnh sự cố mạng/Firebase thực.

Các ảnh này bổ sung bằng chứng Android; chưa thay thế lịch sử Stitch, file Figma gốc hoặc nghiên cứu người dùng. Các phần mô tả prototype web bên dưới là hồ sơ lịch sử.

Đây là bài cá nhân **riêng** với Power9 Family Routine của Văn Quang Duy (SE180724). Desk Reset giải quyết việc lời nhắc nghỉ trùng lịch họp: Home là lịch theo giờ, thông báo dẫn đúng hoạt động, chi tiết có lựa chọn dời nhanh hôm nay và editor dùng để đổi lịch lặp. Dữ liệu, màu sắc, thứ tự nội dung và ba luồng được viết cho bối cảnh này.

## Mở bản xem trước

Mở [prototype/index.html](prototype/index.html) bằng trình duyệt. Bản HTML/CSS/JS chạy cục bộ, không cần cài package. Khung bên trái có ba nút reset dữ liệu demo để thử từng luồng. Trên màn hình hẹp, các nút nằm phía trên màn hình ứng dụng.

| Hồ sơ | Vị trí |
|---|---|
| Persona và tiêu chí đo | [ux/persona.md](ux/persona.md) |
| IA và ba flow | [ux/user-flow.md](ux/user-flow.md) |
| Dữ liệu và quy tắc minh họa | [ux/demo-data.md](ux/demo-data.md) |
| Design brief, token, component | [design/DESIGN.md](design/DESIGN.md) |
| Đặc tả 10 màn | [design/screen-spec.md](design/screen-spec.md) |
| Quyết định khác Family Routine | [design/design-decisions.md](design/design-decisions.md) |
| Handoff Flutter | [handoff/flutter-handoff.md](handoff/flutter-handoff.md) |
| AI log và prompt dự kiến | [ai/ai-design-log.md](ai/ai-design-log.md) |
| Trạng thái bài nộp | [docs/lab2-status.md](docs/lab2-status.md) |

## Ba luồng prototype

1. **F1 — Tạo khoảng nghỉ sau họp:** Đăng nhập demo → Hôm nay → Thư viện → Downshift → Editor → Lưu → Chi tiết; thử tên rỗng, lỗi lưu và bỏ thay đổi.
2. **F2 — Ghi nhận và xem báo cáo:** Hôm nay → Hoàn thành → Tiến độ → Báo cáo → Đang tạo → Sẵn sàng → Bản xem; thử hoàn tác, khoảng trống và lỗi báo cáo.
3. **F3 — Dời lời nhắc trùng lịch:** Hôm nay → Thông báo → Thả lỏng vai và cổ → chọn 15:40 → xác nhận → Hôm nay; thử sửa lịch lặp, xóa có xác nhận và đăng xuất.

Prototype mô phỏng đăng nhập, lưu, thông báo và báo cáo ngay trong bộ nhớ trình duyệt. Không có Firebase, đồng bộ lịch, PDF thật hay mã Flutter. **Chưa có output Google Stitch, file Figma, Figma prototype hoặc PNG xuất từ Figma** cho bài của Đức. Các file `assets/stitch/` và `assets/figma/` chỉ ghi rõ phần còn thiếu, không lấy bằng chứng của Duy làm của Đức.

Theo yêu cầu Lab 2 trong bài mẫu, cần bổ sung bản Google Stitch với prompt/output và các lượt cải tiến có bằng chứng; dựng Figma gồm sáu Pages `01 User Flow`, `02 Wireframe`, `03 Final UI`, `04 Design System`, `05 Components`, `06 Prototype`; kiểm tra ba flow ở Figma Present, accessibility, rồi xuất PNG cuối. Không đánh dấu các bước này hoàn thành từ prototype HTML.

Tên thư mục dùng đúng mẫu nộp `prm323-lab2-SE182178`. GitHub repository được tạo ngày 21/10/2026 tại [PhamQuangDuc1/prm323-lab2-se182178](https://github.com/PhamQuangDuc1/prm323-lab2-se182178), ở chế độ riêng tư. Cần cấp quyền cho giảng viên khi nộp. Link Figma và phê duyệt đề tài từ giảng viên chưa được xác minh.
