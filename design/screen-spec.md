# Đặc tả 10 màn — Desk Reset

Frame mục tiêu 360 × 800 dp, kiểm tra lại 412 dp. Các trạng thái của cùng một màn không được tính thành màn chức năng mới. Màn nhỏ cuộn phần nội dung giữa top bar và bottom navigation; editor giữ nút Lưu ở đáy.

| ID | Màn | Nội dung và hành động chính | Trạng thái / phục hồi |
|---|---|---|---|
| S01 | Đăng nhập | Giới thiệu nghỉ giữa ngày làm việc, bắt đầu demo | loading → Home; lỗi đăng nhập cần retry khi dựng Figma |
| S02 | Hôm nay | Hero việc tiếp theo, agenda cuộc họp + habit theo giờ, check-in/dời | baseline, checked, added, rescheduled, empty |
| S03 | Thư viện | Filter Tất cả/Tại bàn/Rời màn hình, mẫu theo ngữ cảnh | filter selected, empty kết quả nếu bổ sung tìm kiếm |
| S04 | Chi tiết Downshift | Giải thích ngắn, mẫu Thở chậm sau cuộc họp | chọn mẫu → Editor; Back giữ filter |
| S05 | Tạo/sửa | Tên, nguyên tắc, giờ, phút, ngày, nhắc | tên rỗng, lỗi dữ liệu, saving, save error, discard dialog |
| S06 | Chi tiết | Trạng thái hôm nay, check-in, dời nhanh, sửa lịch lặp, xóa | selected time, saved, done/undo, delete dialog |
| S07 | Tiến độ | Khoảng ngày, số lần/phút, biểu đồ có nhãn | populated, empty, đổi khoảng ngày |
| S08 | Báo cáo | Tóm tắt tuần, tạo, bản xem | idle, loading, ready, viewer, error/retry |
| S09 | Cá nhân | Nhắc nghỉ toàn cục, giờ làm, lưu, đăng xuất | on/off, saved, logout dialog |
| S10 | Thông báo | Lời nhắc có tên habit, thời gian và trạng thái đọc | unread/read, target đã xóa |

## Ràng buộc nội dung

- Thông báo “Thả lỏng vai và cổ” mở đúng habit `shoulder`, không chuyển sang `walk`.
- Dời nhanh đặt `todayTime` riêng; Editor đổi `time` lịch lặp. Sau dời, Home cần hiển thị giờ mới và nhãn “Đã dời hôm nay”.
- Hoàn thành phải có nhãn “Đã xong” hoặc “Đã hoàn thành”, không dựa riêng vào nền xanh.
- Xóa habit đưa về Home và thông báo cũ có lời giải thích. Hủy dialog không thay đổi dữ liệu.
- Dữ liệu báo cáo tĩnh được gắn nhãn minh họa; bản xem không tuyên bố là PDF được sinh.
