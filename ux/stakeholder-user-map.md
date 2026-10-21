# Scope và User / Stakeholder Map

**21/10/2026 · Discovery draft · Assumed.** Map từ phạm vi thiết kế, chưa xác thực bằng nghiên cứu.

Scope: nghỉ ngắn tại bàn, ba tác vụ F1 tạo lịch, F2 ghi nhận/xem lại, F3 dời riêng hôm nay. Ngoài scope Lab 2: tư vấn sức khỏe, theo dõi nhân viên, tích hợp lịch công ty thật. Lịch trong prototype là minh họa.

| Nhóm | Quan hệ / nhu cầu giả định | Ảnh hưởng tới UI | Cần kiểm chứng |
|---|---|---|---|
| P01 lịch họp biến động | End user trực tiếp, ưu tiên cao | Agenda, dời một lần, xác nhận phạm vi | Workaround, tần suất quên nghỉ, hiểu lịch lặp |
| Người lịch ổn định | End user, candidate segment | Có thể ưu tiên tạo lịch/check-in hơn đổi giờ | Khác biệt có đủ để tách Secondary? |
| Người ít quen ứng dụng lịch | End user có rào cản kỹ năng | Ngôn ngữ đơn giản, giải thích ngày/lịch lặp | Có tự hoàn thành form không? |
| Người chữ lớn/đọc màn hình/thao tác chậm | Nhu cầu xuyên các nhóm | Reflow, label, focus, target, không chỉ màu | Thử với nhu cầu thực; không suy từ tuổi |
| Đồng nghiệp / tổ chức họp | Gián tiếp thay đổi bối cảnh | Giảm xao nhãng, tắt nhắc khi cần | Chính sách môi trường làm việc |
| Quản trị IT / chủ lịch | Stakeholder khi nối dữ liệu thật | Quyền truy cập, giải thích dữ liệu, privacy | Ngoài scope tích hợp Lab 2 |
| Sinh viên thiết kế/phát triển | Người thực hiện | Handoff, giới hạn demo, recovery | Khả năng hiện thực ở Lab 3 |
| Giảng viên | Người đánh giá | Artefact truy vết được và nguồn rõ | Xác nhận topic và yêu cầu nộp |

## Nhóm dễ bị bỏ sót

- Người làm ca, không có khung 09:00–17:30; không suy rộng từ văn phòng.
- Người không được dùng điện thoại trong giờ làm hoặc tắt notification; cần entry từ Home.
- Người Android cũ/mạng yếu; lỗi giữ dữ liệu và có retry.
- Người có rào cản đọc/vận động; hoạt động tự nguyện, UI hỗ trợ chữ lớn và thao tác thay thế.

Chọn một Primary theo scope bài cá nhân, không tuyên bố đã khảo sát hết phân khúc. Xem [Coverage](persona-coverage.md).
