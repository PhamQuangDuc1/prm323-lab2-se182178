# IA và luồng — Power9 Desk Reset

Điều hướng chính: **Hôm nay / Thư viện / Tiến độ / Cá nhân**. Chi tiết nguyên tắc, Editor, Chi tiết hoạt động, Báo cáo và Thông báo là màn con. Mọi màn chính có đường quay lại hoặc điều hướng rõ.

| ID | Màn hình | Flow |
|---|---|---|
| S01 | Đăng nhập demo | F1, nhánh đăng xuất F3 |
| S02 | Hôm nay, lịch theo giờ | F1, F2, F3 |
| S03 | Thư viện Power9 | F1 |
| S04 | Chi tiết Downshift | F1 |
| S05 | Tạo/sửa thói quen | F1, nhánh sửa F3 |
| S06 | Chi tiết hoạt động và dời nhanh | F1, F2, F3 |
| S07 | Tiến độ | F2 |
| S08 | Báo cáo/bản xem | F2 |
| S09 | Cá nhân | F3 |
| S10 | Thông báo | F3 |

## F1 — Tạo khoảng nghỉ sau họp

`S01 → S02 → S03 → S04 → S05 → [đang lưu] → S06 → S02`. Chọn mẫu Thở chậm 3 phút lúc 15:10. Đích là thói quen có trong lịch. **Recovery:** tên rỗng báo lỗi tại trường, giữ dữ liệu khác; lỗi lưu mô phỏng giữ form và cho thử lại; Back khi đã chỉnh mở dialog bỏ thay đổi.

## F2 — Ghi nhận và xem báo cáo

`S02 → [check-in] → S07 → S08 → [đang tạo] → [sẵn sàng] → [bản xem]`. Đích là thấy ghi nhận hôm nay và bản xem theo tuần. **Recovery:** Hoàn tác ở Home/Detail; chọn “Khoảng trống” ở Progress có empty và CTA về Tuần này; lỗi báo cáo giữ khoảng ngày và cho Thử lại. Back từ bản xem về trạng thái sẵn sàng.

## F3 — Dời lời nhắc trùng lịch

`S02 → S10 → S06 → [chọn 15:40] → [xác nhận] → S02`. Đích là Home hiển thị giờ 15:40 và nhãn “Đã dời hôm nay”. Ba thao tác sau khi đã vào thông báo: mở đúng hoạt động, chọn giờ, xác nhận. **Nhánh khác:** S06 → S05 đổi lịch lặp; S06 → dialog xóa/hủy; S09 → tắt nhắc/lưu; S09 → dialog đăng xuất → S01. Nếu thói quen đã xóa, thông báo không mở nhầm thói quen khác.

## Quy tắc prototype

- Back của màn con trở về màn đã mở; Back của Report viewer trở về Report ready.
- Dialog xóa, đăng xuất và bỏ chỉnh có nút Hủy; chỉ nút xác nhận mới thay đổi dữ liệu.
- Trạng thái loading → result có ở Login, lưu Editor và tạo Report. Lỗi đều có lối thử lại hoặc chỉnh dữ liệu.
- Khoảng giờ 14:00–15:00 được thể hiện trên Home; quick reschedule gợi ý các giờ sau cuộc họp. Lời nhắc đi đến đúng habit.
- Tiêu chí “dưới 30 giây” cần thử với người dùng; prototype thể hiện đường đi, không tự chứng minh thời gian thao tác.
