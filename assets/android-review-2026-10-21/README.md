# Minh chứng Android — 21/10/2026

Ảnh PNG gốc 1080 × 2400, chụp trực tiếp bằng Android SDK `screencap` trên Pixel 7 / Android 16 API 36. Không ghép hoặc sửa nội dung ảnh.

| File | Nội dung và cách tái hiện |
|---|---|
| 00-notification-before.png | Demo → Thông báo, xung đột 14:15; chọn 15:40, lịch lặp ghi rõ vẫn 14:15. |
| 01-home-1540.png | Xác nhận dời → Home hiển thị khoảng nghỉ tiếp theo 15:40. |
| 01b-home-timeline-1540.png | Cuộn Home: cuộc họp 14:00–15:00 đứng trước hoạt động 15:40, nhãn “Đã dời hôm nay”. |
| 02-reschedule-undo.png | Snackbar xác nhận dời sang 15:40 hôm nay, lịch lặp vẫn 14:15, có nút “Hoàn tác”. |
| 03-back-confirmation.png | Thư viện → Sửa lịch vai/cổ → đổi thời lượng 9 thành 3 phút → nhấn Android Back → “Bỏ thay đổi chưa lưu?”. |
| 04a-save-simulation-context.png | Bản chạy minh chứng ghi rõ mô phỏng lỗi lưu, không kết nối Firebase. |
| 04b-form-before-save.png | CustomHabitDialog trước lưu: tên `Nghi mat giua gio`, mô tả `Nhin xa 20 giay`, giờ 15:30, 10 phút. |
| 04-form-save-error-retains-input.png | Sau lần lưu đầu trả false: cả bốn giá trị giữ nguyên, form không đóng, có thông báo “Chưa lưu được. Dữ liệu vẫn còn…”. |
| 04c-form-retry-success.png | Nhấn Tạo lần nữa: form đóng, kết quả ghi nhận cùng tên và số lần lưu = 2. |
| 05-home-412dp-font200.png | Home với font_scale 2.0, density 420 (1080px tương đương khoảng 411,4 dp, thường gọi 412 dp). Nội dung xuống dòng, trang cuộn dọc. |
| 06-notifications-412dp-font200.png | Thông báo với cùng cấu hình: nhãn xác nhận xuống hai dòng. |
| 07-notifications-360dp-font200.png | density 480: 1080px / 3 = 360 dp, font_scale 2.0; nút xác nhận xuống hai dòng, không có sọc cảnh báo overflow. |

## Phạm vi của bằng chứng lỗi lưu

Trong project Flutter `power9_desk_reset` riêng, chạy `flutter run -d emulator-5554 -t tool/ux_evidence_main.dart --no-pub --no-resident`. Bản sao launcher nằm tại [handoff/ux_evidence_main.dart](../../handoff/ux_evidence_main.dart) trong repo Lab 2 này; repo này chưa bao gồm toàn bộ project Flutter.
Launcher chỉ import `lib/screens/custom_habit_dialog.dart` và theme thật. Callback lần đầu trả false, lần thứ hai trả true. Ảnh chứng minh hành vi giữ dữ liệu và thử lại của component đang chạy trên Android; **không phải ảnh lỗi mạng/Firebase thực**. Tên không dấu là dữ liệu nhập phục vụ minh chứng.

## Phạm vi của bằng chứng chữ lớn

Đã đặt font_scale 2.0 trên emulator. Android 16 áp dụng cơ chế phóng chữ của nền tảng; đây không phải phép khẳng định mọi cỡ chữ đều tăng tuyến tính đúng hai lần. Ảnh ghi nhận các vùng đang hiển thị, không thay thế kiểm toán accessibility toàn ứng dụng hoặc TalkBack. Vùng nội dung tiếp tục ở trên/dưới khung nhìn là nội dung cuộn.

Các ảnh Home/Thông báo/Back dùng bản demo, dữ liệu lịch minh họa. Chưa phải kết quả nghiên cứu với người tham gia, không phải bằng chứng ba vòng Stitch.

Sau khi chụp, font_scale được trả về 1.0, density về mặc định 420; bản demo Android ban đầu được cài lại.
