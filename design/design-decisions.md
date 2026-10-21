# Quyết định thiết kế và khác biệt bài mẫu

| Quyết định | Lý do gắn với Huy | Biểu hiện trong prototype |
|---|---|---|
| Home là agenda theo giờ | Huy cần biết hoạt động có chen vào cuộc họp không | Meeting và habit nằm trong một danh sách theo thời gian |
| Dời nhanh hôm nay nằm ở Detail | Cuộc họp đổi bất chợt; không muốn mở form dài | Chọn 15:40/16:10 rồi xác nhận, có phản hồi lưu |
| Phân biệt giờ hôm nay và lịch lặp | Dời một lần không được làm hỏng thói quen những ngày sau | `todayTime` khác `time`; Editor mới đổi lịch lặp |
| Thông báo dẫn tới đúng habit | Huy thường xem nhanh thông báo rồi quay lại việc | Notification “Thả lỏng vai và cổ” mở chính Detail đó |
| Filter theo nơi thực hiện | Bối cảnh tại bàn/rời màn hình phù hợp nhân viên văn phòng | Thư viện có Tại bàn và Rời màn hình |
| Màu navy/cyan và nội dung lịch | Thể hiện nhịp làm việc và thời gian; khác Family Routine của Duy | Hero tối, agenda dọc, chip giờ, không dùng ảnh gia đình |

## Accessibility và trạng thái kiểm tra

Trạng thái hoàn thành/lỗi đều có nhãn. Prototype có keyboard focus ring, `aria-label` cho icon button và `aria-invalid` ở tên lỗi. Sau lần chỉnh CSS, kiểm tra DOM tại viewport 360 px trên Login, Home, Library, Principle, Editor, Profile và Notifications cho thấy không có chữ lá nhỏ dưới 14 px, không có nút nhỏ hơn 48 × 48 px và không tràn ngang phần nội dung. F1–F3 đã được bấm thử trong browser. **Chưa xác nhận đạt toàn bộ chuẩn Lab 2:** chưa đo contrast trên mọi cặp màu/trạng thái, chưa có usability test hoặc kiểm thử Figma Present. Cần đo lại trên bản Figma cuối vì số đo browser không thay thế Figma.

## Cách kiểm tra mục tiêu dưới 30 giây

Đưa người thử vào S02, nói “Bạn vừa thấy lời nhắc nghỉ nhưng bận họp; hãy dời hoạt động sang sau 15:00 mà không đổi lịch các ngày khác”. Bắt đầu bấm giờ khi họ nhìn thấy Home, kết thúc khi Home hiện giờ mới. Ghi thời gian, số lần bấm, vị trí do dự, và hỏi lại họ hiểu lịch lặp có đổi không. Chưa có người thử; đây là protocol dự kiến.
