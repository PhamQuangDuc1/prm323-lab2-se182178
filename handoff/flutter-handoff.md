# Flutter handoff — Power9 Desk Reset

Đây là hợp đồng thiết kế cho Lab 3, **chưa có mã Flutter**. Nguồn hiện tại là prototype local trong `prototype/`; khi hoàn tất Figma, cần đối chiếu Figma trước khi triển khai. Persona chính Huy, 28 tuổi, lịch làm việc có thể thay đổi.

## Data và navigation

`Habit`: `id`, `name`, `principleId`, `time` (giờ lịch lặp), `todayTime?` (override chỉ hôm nay), `durationMinutes`, `weekdays`, `reminderEnabled`, `completedDates`. `Meeting`: `start`, `end`, `title`; dữ liệu lịch thật cần quyền và xử lý privacy khi Lab 3 có triển khai. `Notification`: `habitId`, `scheduledAt`, `readAt?`; khi `habitId` không tồn tại, hiện recovery thay vì mở hoạt động khác.

Routes dự kiến: `/login`, `/today`, `/library`, `/principle/:id`, `/habit/new`, `/habit/:id/edit`, `/habit/:id`, `/progress`, `/reports`, `/profile`, `/notifications`. Bottom navigation cho Today/Library/Progress/Profile. Child routes có Back về ngữ cảnh mở. Report viewer có Back về Ready, logout xóa navigation stack của phiên cũ.

## Token → Flutter

| Design token | Giá trị | Flutter dự kiến |
|---|---|---|
| primary / onPrimary | `#075D78` / `#FFFFFF` | `ColorScheme.primary` / `onPrimary` |
| surface / onSurface | `#F5F7F8` / `#182434` | `ColorScheme.surface` / `onSurface` |
| surfaceContainer | `#FFFFFF` | `ColorScheme.surfaceContainerLowest` |
| secondaryContainer | `#C9F0F2` | `ColorScheme.secondaryContainer` |
| error | `#A52B2B` | `ColorScheme.error` |
| deskNavy | `#172437` | `DeskColors.navy` |
| muted | `#526174` | `DeskColors.muted` |
| warningContainer | `#FFF4DF` | `DeskColors.warningContainer` |

Font Be Vietnam Pro. Flutter dùng `TextTheme` headline/title/body/label và giữ text scaling của thiết bị. Trước hiện thực cần chốt bản Figma với supporting text ≥14 sp, touch target ≥48 dp và contrast đo trên UI thật. Các giá trị CSS của bản web cần được chuyển sang logical dp/sp và kiểm tra lại trên Android.

## Component → Widget

| Component | Widget/logic đề xuất |
|---|---|
| Agenda timeline | `ListView` các `MeetingTile` / `HabitTile` được sort theo thời gian hiển thị |
| Habit card | `Card` + `Semantics` + check-in/dời/sửa actions |
| Quick reschedule | `ChoiceChip` hoặc nút giờ + CTA xác nhận; ghi override theo ngày |
| Day selection | `Wrap` các `FilterChip`, target ≥48 dp |
| Editor | `Form`, `TextFormField`, `TimePicker`, validation giữ input |
| Bottom navigation | `NavigationBar` bốn destination |
| Dialog | `AlertDialog` cho xóa, bỏ sửa, đăng xuất |
| Loading/error/empty | Widget có thông điệp và recovery action |

## Hợp đồng từng màn

| ID | Layout, trạng thái và tương tác cần giữ |
|---|---|
| S01 Login | Hero navy, lời giải thích dữ liệu; loading/error; vào Today sau auth hoặc demo |
| S02 Today | Timeline sắp theo giờ gồm meeting/habit; số hoàn thành hôm nay; check-in/undo tại card; từ chuông mở Notification |
| S03 Library | Filter Tất cả/Tại bàn/Rời màn hình; giữ filter khi Back từ Principle |
| S04 Principle | Downshift và mẫu Thở chậm 3 phút; CTA chuyển dữ liệu mẫu vào Editor |
| S05 Editor | Form tạo/sửa; tên trim 1–50 ký tự, duration nguyên 1–120 phút, ≥1 weekday, giờ hợp lệ; giữ dữ liệu khi lỗi; confirm discard |
| S06 Detail | Tên, giờ hôm nay, lịch lặp, done/undo; quick reschedule chỉ lưu ngày hiện tại; edit đổi lịch lặp; delete confirm đúng tên |
| S07 Progress | Bộ lọc khoảng ngày, số liệu với nhãn; empty có CTA; biểu đồ có semantic summary |
| S08 Reports | Giữ range qua loading/error/retry; PDF/upload thật ở Lab 3 cần xử lý lỗi và quyền truy cập; prototype chỉ bản xem |
| S09 Profile | Nhắc nghỉ toàn cục, giờ làm, feedback lưu, logout confirm |
| S10 Notifications | Đọc/chưa đọc bằng chữ + icon/màu; tap dẫn đúng `habitId`; target bị xóa có recovery |

## Responsive và chất lượng

Ở 360/412 dp: nội dung cuộn, top bar/bottom navigation không che CTA, tên dài xuống dòng, chip ngày dùng Wrap. Từ 600 dp: content max width khoảng 560 dp; Today có thể chia lịch và panel tóm tắt thành hai cột, nhưng thứ tự đọc vẫn từ hoạt động kế tiếp tới agenda. Hỗ trợ Android Back, keyboard, TalkBack và tăng cỡ chữ. Dữ liệu ngày/giờ lấy locale Việt Nam; không hardcode ngày 14/10/2026 từ prototype trong app thật.
