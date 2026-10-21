# Persona → Need → UI decision → Test

**21/10/2026.** Need từ A-ID là giả thuyết; UT là kế hoạch người dùng thử. Kết quả kỹ thuật tại `docs/verification.md` chỉ xác nhận hành vi prototype.

| Persona / nguồn | Need theo kết quả | Quyết định / màn | Cách kiểm chứng / mục tiêu | Trạng thái |
|---|---|---|---|---|
| P01 / A02/A04 | Tìm đúng việc cần dời, không mất mạch công việc | UI01: notification đúng habit, entry từ Home; S02/S10/S06 | UT03 mở đúng hoạt động; target xóa có recovery | Chưa test người dùng |
| P01 / A03/A04 | Đổi một lần, giữ nhịp các ngày sau | UI02: “Dời nhanh hôm nay”, giờ lặp riêng, xác nhận/hoàn tác; S06/S02 | UT03 ≥4/5 ≤30s; 5/5 hiểu phạm vi; 0 lỗi sửa lịch lặp | Chưa test người dùng |
| P01 / A02/A03 | Biết hoạt động kế tiếp sau khi lịch đổi | UI03: agenda và hero cùng sort giờ hôm nay; S02 | UT03 tìm thấy giờ mới; technical check hero mở đúng detail | Chưa test người dùng |
| P01 / A03/A04 | Tạo nghỉ vừa sức, sửa lỗi không mất dữ liệu | UI04: mẫu → Editor, validation theo trường/retry; S03–S06 | UT01 ≥4/5 độc lập ≤60s, 0 mất input khi lỗi | Chưa test người dùng |
| P01 / A03 | Biết đã làm gì và sửa được bấm nhầm | UI05: check-in/hoàn tác, số liệu nhất quán, nhãn biểu đồ; S02/S07/S08 | UT02 ≥4/5 ≤45s; 5/5 tìm được hoàn tác | Chưa test người dùng |
| P01/X01 / A05 | Đọc/thao tác không phụ thuộc màu hoặc chuột | UI06: contrast, target, focus, dialog, reflow | Technical check 360/412/600, keyboard; thử với người có nhu cầu thực | Chưa xác nhận TalkBack/người thật |

Nếu người thử vẫn hiểu sai phạm vi, chỉnh nội dung/entry và test lại; nếu hai giờ gợi ý không phù hợp, nghiên cứu chọn giờ tùy chỉnh. Không kết luận có nút đồng nghĩa đã đáp ứng need.
