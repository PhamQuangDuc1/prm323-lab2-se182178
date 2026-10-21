# P01 · Huy — Primary Proto-Persona / Power9 Desk Reset

**Huy, 28 tuổi, lập trình viên**, đại diện nhóm nhân viên văn phòng 24–35 tuổi. Persona này phục vụ thảo luận và thiết kế; chưa được phỏng vấn hoặc khảo sát xác nhận.

Huy làm việc trước màn hình phần lớn ngày, có họp nhóm buổi sáng và họp dự án buổi chiều. Huy muốn xen vận động nhẹ và thư giãn vào giờ làm nhưng thường bỏ qua giờ nghỉ khi lịch họp đổi. Huy xem điện thoại Android trong khoảng nghỉ và muốn nhìn đủ thông tin chỉ trong vài giây.

## Mục tiêu và khó khăn

- Duy trì hai khoảng nghỉ ngắn trong ngày làm việc, có thể đổi lịch khi họp kéo dài.
- Biết ngay hoạt động tiếp theo và cuộc họp nào có thể ảnh hưởng tới lời nhắc.
- Đánh dấu hoàn thành và xem lại tiến độ mà không phải duyệt qua nhiều menu.
- Tránh thông báo bật trong cuộc họp, form sửa lịch dài, và việc dời một lần làm thay đổi lịch lặp ngoài ý muốn.

**Thiết bị:** Android, dùng bằng một tay, mở app nhanh từ thông báo. **Accessibility:** tiêu đề và thời điểm dễ quét; chữ nội dung tối thiểu 14 sp; vùng chạm mục tiêu 48 × 48 dp; trạng thái có chữ và biểu tượng, không chỉ màu. Lời nhắc phải nêu tên hoạt động và thời gian.

## Tình huống trọng tâm

Lúc 14:15 Huy nhận nhắc “Thả lỏng vai và cổ” giữa Sprint review 14:00–15:00. Huy mở thông báo, thấy hoạt động đúng, chọn **15:40 sau Sprint review**, xác nhận và quay lại lịch Hôm nay. Việc dời chỉ áp dụng **hôm nay**; lịch lặp 14:15 của những ngày khác giữ nguyên.

## Problem statement và mục tiêu UX

Huy cần theo dõi và đổi thời điểm thực hiện thói quen Power9 theo lịch làm việc biến động để vẫn thực hiện được một khoảng nghỉ vào lúc thuận tiện.

**Mục tiêu đề xuất UT03:** ít nhất 4/5 người thử phù hợp tự dời đúng hoạt động và thấy giờ mới trên Home trong **≤30 giây** từ S10; 5/5 hiểu lịch lặp 14:15 không đổi; 0 lỗi sửa nhầm lịch lặp. Đây là mục tiêu thiết kế, **chưa có kết quả usability test**. Protocol thống nhất tại [Validation plan](validation-plan.md).

## Hồ sơ 12 trường lõi — v2, 21/10/2026

Mọi đặc điểm hành vi dưới đây là **Assumed**. A01–A06 là ID giả định, không phải mã phỏng vấn. Xem [Evidence register](evidence-register.md).

| Trường | Nội dung dùng cho thiết kế |
|---|---|
| 01. Identity & Archetype | Huy, 28 tuổi, lập trình viên. Nhóm hành vi: làm việc tập trung, lịch họp thay đổi, thường bỏ nhịp nghỉ khi bị ngắt. A01/A02. |
| 02. Persona Priority | **Primary** cho F1 tạo lịch nghỉ, F2 ghi nhận/xem lại, F3 dời một lần. Một Primary là phạm vi bài cá nhân; chưa có nghiên cứu để khẳng định đây là phân khúc duy nhất. A01. |
| 03. Usage Context | Tại bàn văn phòng/nhà, giữa các cuộc họp ngày thường; Android một tay, mở ngắn từ lời nhắc, chú ý phân tán, có thể tắt âm. A02. |
| 04. Goals | Duy trì hai khoảng nghỉ vừa sức; chọn được thời điểm thuận tiện khi lịch đổi; biết đã thực hiện gì mà không mất nhiều thời gian theo dõi. A03. |
| 05. Job to Be Done | Khi lời nhắc xuất hiện trong cuộc họp, tôi muốn chọn lại thời điểm nghỉ hôm nay để vẫn nghỉ được mà không đổi nhịp sinh hoạt các ngày khác. A02/A03. |
| 06. Current Behaviors | Giả định dựa vào lịch làm việc/trí nhớ; xem điện thoại giữa các phiên tập trung; bỏ qua nhắc khi họp rồi quên quay lại. Workaround giả định: tự nhớ giờ khác hoặc chỉnh báo thức. Tần suất và công cụ thực: **UNKNOWN**, cần RQ01/RQ02. A02/A04. |
| 07. Pain Points | Nhắc trùng họp → bỏ qua/quên nghỉ; form dài → mất thời gian chỉ để dời một lần; phạm vi sửa không rõ → lo đổi nhầm lịch các ngày sau. A04. |
| 08. Motivations | Nhanh, tự quyết, biết thao tác đã lưu và dễ sửa sai. Chưa có bằng chứng streak/huy hiệu là động lực. A03/A04. |
| 09. Constraints | Thời gian chú ý ngắn, màn nhỏ, một tay, mạng/quyền thông báo có thể hạn chế. Kỹ năng số và nhu cầu hỗ trợ thực: chưa biết. A02/A05. |
| 10. Key Scenarios | SC01: lời nhắc 14:15 trùng Sprint review, dời 15:40 và kiểm tra Home. SC02: sau họp, tạo lịch thở 3 phút lúc 15:10, ngày thường, xác nhận đã thêm. A06. |
| 11. Success Criteria | UT03: ≥4/5 độc lập ≤30s, 5/5 hiểu lịch lặp không đổi, 0 lỗi lưu nhầm lịch lặp. UT01 tạo đúng ≤60s; UT02 ghi nhận/mở báo cáo ≤45s. Mọi mốc đều là mục tiêu chưa đo. A06. |
| 12. Evidence & Status | **Proto-Persona / Assumed / chưa xác thực**, cập nhật 21/10/2026. Chưa có Observed/Reported findings từ người thật. A-ID chỉ giúp truy vết giả định. Chỉ nâng trạng thái khi có notes R-ID, pattern và cập nhật theo dữ liệu. |

## Chi tiết Lab 2 và giới hạn

Tuổi/vai trò/thiết bị và accessibility đã nêu bên trên. Hỗ trợ thêm chữ lớn/reflow, nhãn điều khiển, focus nhìn rõ, dialog dùng được bằng bàn phím; không phụ thuộc màu/âm thanh. px của HTML không tự chứng minh dp/sp hay TalkBack của Flutter.

Nếu người thật không dùng thông báo, ưu tiên entry từ Home; nếu họ thường sửa lịch dài hạn, xem lại khả năng tìm Editor. Không dùng ngưỡng thời gian để loại người cần hỗ trợ. Các candidate khác nằm trong [Coverage matrix](persona-coverage.md); phương pháp kiểm chứng tại [Research plan](research-plan.md).
