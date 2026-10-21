# Persona Coverage Matrix

**21/10/2026 · Candidates chưa xác thực.** Lab 2 triển khai một Primary. Các candidate chỉ dùng rà coverage, không tính là persona đã hoàn thành.

| ID / trạng thái | Goal / hành vi | Context / constraint | Khác biệt UI có thể cần | Evidence |
|---|---|---|---|---|
| P01 Huy — Primary Proto-Persona | Duy trì nghỉ khi lịch biến động, dời riêng hôm nay | Android/chú ý ngắn/tại bàn | Agenda, dời nhanh, phạm vi hôm nay/lặp | A01–A06 |
| C02 — candidate | Lịch ổn định, tạo một lần rồi ghi nhận | Ít đổi giờ | Có thể ưu tiên check-in thay cho dời | Chưa có; so tần suất đổi lịch |
| C03 — candidate | Cần hướng dẫn để tự tin sửa lịch | Ít quen ứng dụng lịch | Giải thích ngày/lịch lặp và phòng lỗi | Chưa có; thử hiểu form |
| X01 — xuyên nhóm | Cùng tác vụ bằng chữ lớn/đọc màn hình/thao tác chậm | Nhu cầu tùy cá nhân | Reflow, label, focus, semantic summary | Chưa có; RQ07 |
| X02 — ngoài scope hiện tại | Nghỉ theo ca/hạn chế điện thoại | Ca đêm hoặc không notification | Lịch/entry khác; nghiên cứu trước mở rộng | Chưa có |

## Lý do chọn một Primary

Guideline cho phép một Primary trong Lab 2 cá nhân. P01 bao phủ ba tác vụ trong bối cảnh văn phòng và ưu tiên vấn đề thay đổi thời điểm. Đây là quyết định giới hạn scope, **chưa phải lý giải dựa trên nghiên cứu rằng không có phân khúc khác**. Đồ án nhóm cần nghiên cứu và xem lại số persona.

Gộp candidate nếu goals/workflow/rào cản dẫn tới cùng UI; tách khi pattern có nguồn độc lập và ưu tiên UI thực sự khác. Không tách chỉ vì tuổi/giới tính/chức danh; ghi R-ID và lý do sau nghiên cứu.
