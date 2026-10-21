# Design brief — Power9 Desk Reset

## Ý đồ

Home là **lịch theo giờ**, đặt cuộc họp và thói quen trong cùng một dòng thời gian. Thời điểm là thông tin mạnh nhất trên card; hành động Check-in và Dời/sửa xuất hiện ngay cạnh hoạt động. Màn Chi tiết cho **dời hôm nay** bằng hai giờ gợi ý; Editor dành cho thay đổi lịch lặp. Lựa chọn này phục vụ Huy, người bị lịch họp xen vào, thay vì nhấn vào thời lượng hoạt động gia đình như bài Family Routine.

## Ngôn ngữ thị giác

Hướng visual: bảng lịch làm việc tối giản, nền lạnh sáng, navy cho lịch tổng quan, cyan cho hành động, vàng ấm để gợi thời điểm cần chú ý. Không sử dụng ảnh gia đình, hình minh họa sinh hoạt gia đình hoặc bố cục Home của bài mẫu. Font Be Vietnam Pro với fallback Arial. Nội dung tiếng Việt ngắn và cụ thể: “Dời nhanh hôm nay”, “Lịch lặp vẫn giữ nguyên”, “Sau Sprint review”.

| Token | Giá trị | Dùng cho |
|---|---|---|
| `color/primary` | `#075D78` | CTA và selected |
| `color/onPrimary` | `#FFFFFF` | Chữ trên CTA |
| `color/navy` | `#172437` | Hero, Login |
| `color/surface` | `#F5F7F8` | Nền màn |
| `color/white` | `#FFFFFF` | Card, input |
| `color/ink` | `#182434` | Chữ chính |
| `color/muted` | `#526174` | Chữ phụ |
| `color/cyanContainer` | `#C9F0F2` | CTA trên hero |
| `color/warningContainer` | `#FFF4DF` | Gợi ý xung đột thời gian |
| `color/success` | `#176A58` | Hoàn thành kèm nhãn |
| `color/error` | `#A52B2B` | Validation, xóa |
| `color/outline` | `#95AAB7` | Ranh giới input |

Typography dự kiến: headline 26/32, title 18/26, body/label/supporting tối thiểu 14 px trên prototype. Spacing: 4/8/12/16/24/32 dp. Radius card 18–23, control 11–14. Nút và chip trong UI mobile đã chỉnh hộp bấm tối thiểu 48 × 48 px trên bản browser; cần đo lại sau khi dựng Figma vì px của bản web không tự chứng minh dp/sp trong Figma/Flutter.

## Component dự kiến cho Figma

| Nhóm | Variants/states cần dựng |
|---|---|
| Button | default, pressed, disabled, loading, destructive |
| Text field | empty, focused, filled, error, disabled |
| Agenda card | habit default, done, meeting, pressed |
| Bottom navigation | bốn destination selected |
| App bar | top-level, back, notification action |
| Dialog | discard, delete, logout |
| Loading | login, save, report |
| Empty | progress không dữ liệu, notification target đã xóa |
| Error | tên rỗng, lưu lỗi, tạo báo cáo lỗi |

Figma cần Variables/styles cho màu, typography, spacing và radius; Auto Layout trên mọi component; màn Final UI dùng instance. Đây là đặc tả cần thực hiện, **chưa phải bằng chứng đã dựng Figma**.
