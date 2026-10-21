# Trạng thái Lab 2 của Phạm Quang Đức

## Bổ sung ngày 21/10/2026

Đã có [bộ ảnh Android](../assets/android-review-2026-10-21/README.md): Home sau khi dời sang 15:40, Hoàn tác, xác nhận Android Back, form giữ dữ liệu khi lưu lỗi mô phỏng và giao diện font_scale 2.0 ở 360/khoảng 412 dp. Bằng chứng lỗi lưu dùng component thật và callback kiểm soát, không kết nối Firebase. Mã launcher lưu tại [handoff/ux_evidence_main.dart](../handoff/ux_evidence_main.dart) để dùng trong project Flutter riêng.

Bảng ngày 14/10 bên dưới là trạng thái lịch sử. Bộ ảnh mới không xác nhận hoàn tất Stitch, Figma hoặc usability test. Repository được tạo/push theo yêu cầu trong đợt bổ sung này; cần cấp quyền xem cho giảng viên nếu repo riêng tư.

Ngày ghi: 14/10/2026 (giờ Việt Nam). Bài mẫu của Văn Quang Duy chỉ được dùng để hiểu cấu trúc yêu cầu, không dùng làm output của Đức.

| Hạng mục | Hiện trạng |
|---|---|
| Persona, problem statement, mục tiêu UX | Có bản giả định tại `ux/persona.md`; chưa nghiên cứu người dùng |
| 10 loại màn, 3 flow, recovery | Có đặc tả và prototype HTML tương tác tại `prototype/` |
| Design brief và handoff Flutter | Có bản riêng cho Desk Reset |
| Google Stitch output và ≥3 iteration có before/after | Chưa có; prompt trong AI log chỉ là draft chưa chạy |
| File Figma 6 Pages, Variables, Auto Layout, components, Present | Chưa có file Figma của Đức; kết nối Figma hiện báo cần đăng nhập lại |
| PNG export Figma | Chưa có |
| Kiểm tra accessibility cuối 360/412 | Browser đã rà 360 px trên Login, Home, Library, Principle, Editor, Profile, Notifications: chữ lá ≥14 px, nút ≥48 × 48 px, không tràn ngang; Home ở 412 px cũng đạt các phép đo này. Đã bấm thử F1–F3, gồm validation tên rỗng, loading/report viewer và dời 15:40 hiện lại trên Home. Chưa đo contrast toàn bộ, chưa kiểm tra Figma/Android |
| Usability test mục tiêu dời dưới 30 giây | Chưa thực hiện |
| GitHub repo và link Figma xem được | Chưa tạo/xác nhận |
| Topic/persona được giảng viên duyệt | Chưa có bằng chứng |

## Việc còn phải làm trước nộp

1. Chạy prompt Desk Reset trong Stitch, lưu prompt/output gốc; làm ít nhất ba vòng cải tiến thật với before/after, critique và quyết định của Đức.
2. Dựng thiết kế của Đức trong Figma với sáu Pages đúng thứ tự; dùng component instances, Variables/styles và nối ba starting points.
3. Kiểm tra contrast, 360/412, keyboard, overlay, loading/error/empty và ba flow trong Figma Present; xuất PNG. Rà lại cỡ chữ/vùng chạm sau khi chuyển thiết kế từ HTML sang Figma.
4. Cho người phù hợp persona thử flow dời lịch, đo mục tiêu dưới 30 giây, cập nhật thiết kế theo kết quả.
5. Kiểm tra lịch sử Git/Figma thật, quyền truy cập link và yêu cầu nộp do giảng viên công bố. Không backdate hoặc ghi nhận kiểm thử chưa làm.
