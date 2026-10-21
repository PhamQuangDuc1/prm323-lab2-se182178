// Screenshot-only launcher. Uses the production dialog with a controlled
// failed save callback; this does not simulate a real Firebase outage.
// Run: flutter run -t tool/ux_evidence_main.dart
import 'package:flutter/material.dart';
import 'package:power9_desk_reset/screens/custom_habit_dialog.dart';
import 'package:power9_desk_reset/theme/desk_theme.dart';

void main() => runApp(const EvidenceApp());

class EvidenceApp extends StatelessWidget {
  const EvidenceApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: deskTheme(),
    home: const SaveRecoveryEvidence(),
  );
}

class SaveRecoveryEvidence extends StatefulWidget {
  const SaveRecoveryEvidence({super.key});

  @override
  State<SaveRecoveryEvidence> createState() => _SaveRecoveryEvidenceState();
}

class _SaveRecoveryEvidenceState extends State<SaveRecoveryEvidence> {
  int attempts = 0;
  String? savedTitle;

  Future<void> openForm() async {
    attempts = 0;
    await showDialog<void>(
      context: context,
      builder: (_) => CustomHabitDialog(
        onSave: (habit) async {
          attempts++;
          if (attempts == 1) return false;
          setState(() => savedTitle = habit.title);
          return true;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Minh chứng phục hồi form')),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'MÔ PHỎNG LỖI LƯU',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 12),
          const Text(
            'Dùng CustomHabitDialog của ứng dụng. Lần lưu đầu trả về false; '
            'lần thứ hai thành công. Không kết nối Firebase.',
          ),
          const SizedBox(height: 24),
          FilledButton(onPressed: openForm, child: const Text('Mở form tạo thói quen')),
          if (savedTitle != null) ...[
            const SizedBox(height: 24),
            Text('Thử lại thành công: $savedTitle',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Số lần lưu: $attempts'),
          ],
        ],
      ),
    ),
  );
}
