# Dữ liệu demo và quy tắc trạng thái

Ngày cố định cho prototype: **Thứ Tư 14/10/2026**, để ba luồng có dữ liệu lặp lại. Đây là dữ liệu minh họa, không lấy từ tài khoản hoặc lịch thật.

| Loại | Tên | Giờ | Thời lượng | Trạng thái đầu | Ý nghĩa |
|---|---|---:|---:|---|---|
| Cuộc họp | Họp nhóm | 09:00–10:00 | — | có trên lịch | Ngữ cảnh buổi sáng |
| Habit | Thả lỏng vai và cổ | 10:20 | 4 phút | chưa xong | Downshift; lời nhắc của F3 |
| Cuộc họp | Sprint review | 14:00–15:00 | — | có trên lịch | Chọn giờ trống sau họp |
| Habit | Đi bộ quanh văn phòng | 15:30 | 8 phút | chưa xong | Move Naturally; check-in F2 |
| Mẫu tạo mới | Thở chậm sau cuộc họp | 15:10 | 3 phút | chưa tạo | Downshift; F1 |

- F1 thêm mẫu mới, Home chuyển từ 0/2 thành 0/3. Mỗi luồng được reset bằng nút demo để không trộn dữ liệu.
- F2 check-in một hoạt động chuyển 0/2 thành 1/2; hoàn tác trở về 0/2. Tuần có nền minh họa 4 lần/28 phút; số lần và phút check-in hôm nay được cộng vào Progress/Report. Số liệu tháng là ví dụ tĩnh có nhãn “minh họa”.
- F3 dời `Thả lỏng vai và cổ` sang 15:40 hoặc 16:10. `todayTime` là thời điểm hôm nay; `time` là giờ lịch lặp. Xóa activity yêu cầu xác nhận và thông báo cũ cho biết đích đã xóa.
- Đăng nhập, lưu thói quen, lưu cài đặt, tạo báo cáo và lời nhắc là trạng thái cục bộ. Reload trang đưa prototype về Login. Không có đồng bộ hoặc PDF thật.
