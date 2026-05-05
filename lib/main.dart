import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class AppColors {
  static const Color primary       = Color(0xFF3D5A80);
  static const Color primaryLight  = Color(0xFF5B7FA6);
  static const Color primaryDark   = Color(0xFF2C4260);
  static const Color accent        = Color(0xFFE0FBFC);
  static const Color background    = Color(0xFFF4F6FA);
  static const Color surface       = Color(0xFFFFFFFF);
  static const Color textPrimary   = Color(0xFF1C2B3A);
  static const Color textSecondary = Color(0xFF6B7F93);
  static const Color shadow        = Color(0xFF3D5A80);

  static const List<Color> avatarPalette = [
    Color(0xFF3D5A80),
    Color(0xFF6B9080),
    Color(0xFFBC6C25),
    Color(0xFF7B5EA7),
    Color(0xFF2E86AB),
  ];

  static const List<Color> tagPalette = [
    Color(0xFFBC6C25),
    Color(0xFF2E86AB),
    Color(0xFF6B9080),
    Color(0xFF7B5EA7),
    Color(0xFF3D5A80),
    Color(0xFF5C677D),
    Color(0xFF2A9D8F),
    Color(0xFFE07A5F),
    Color(0xFFD4A373),
    Color(0xFFE63946),
    Color(0xFFB56576),
    Color(0xFF457B9D),
    Color(0xFF6B9080),
    Color(0xFF7B5EA7),
    Color(0xFF5C4033),
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Classroom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Praktikum 3: Flutter Classroom'),
    );
  }
}

class ClassroomItem {
  final String title;
  final String description;
  final String subtitle;
  final IconData icon;
  final String tag;

  const ClassroomItem({
    required this.title,
    required this.description,
    required this.subtitle,
    required this.icon,
    required this.tag,
  });
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  static const List<ClassroomItem> items = [
    ClassroomItem(
      title: 'Assignment 1',
      description: 'Kerjakan layout Flutter sederhana dan kirim sebelum Jumat.',
      subtitle: 'Due tomorrow',
      icon: Icons.assignment_outlined,
      tag: 'Tugas',
    ),
    ClassroomItem(
      title: 'Quiz Review',
      description: 'Baca ulang materi Row, Column, dan Expanded untuk diskusi kelas.',
      subtitle: 'Posted today',
      icon: Icons.quiz_outlined,
      tag: 'Kuis',
    ),
    ClassroomItem(
      title: 'Project Reminder',
      description: 'Lengkapi tampilan kartu list dan rapikan warna komponen.',
      subtitle: 'Materials added',
      icon: Icons.folder_outlined,
      tag: 'Project',
    ),
    ClassroomItem(
      title: 'Coding Challenge',
      description: 'Buat widget responsif menggunakan Flexible dan Spacer.',
      subtitle: 'Due in 3 days',
      icon: Icons.code_outlined,
      tag: 'Challenge',
    ),
    ClassroomItem(
      title: 'Reading Assignment',
      description: 'Tinjau dokumentasi Flutter tentang styling dan decoration.',
      subtitle: 'Posted today',
      icon: Icons.menu_book_outlined,
      tag: 'Bacaan',
    ),
    ClassroomItem(
      title: 'Lab Session',
      description: 'Ikuti sesi praktek widget multi-child di lab komputer.',
      subtitle: 'Tomorrow 10:00',
      icon: Icons.computer_outlined,
      tag: 'Lab',
    ),
    ClassroomItem(
      title: 'Group Discussion',
      description: 'Diskusikan implementasi ListView.builder untuk performa lebih baik.',
      subtitle: 'Posted today',
      icon: Icons.group_outlined,
      tag: 'Diskusi',
    ),
    ClassroomItem(
      title: 'Presentation Review',
      description: 'Tunjukkan hasil project ke mentor dan dapatkan feedback langsung.',
      subtitle: 'Due in 5 days',
      icon: Icons.slideshow_outlined,
      tag: 'Presentasi',
    ),
    ClassroomItem(
      title: 'Code Review',
      description: 'Periksa kode teman dan berikan saran perbaikan yang konstruktif.',
      subtitle: 'Materials added',
      icon: Icons.rate_review_outlined,
      tag: 'Review',
    ),
    ClassroomItem(
      title: 'Midterm Exam',
      description: 'Siapkan diri untuk ujian tengah semester minggu depan.',
      subtitle: 'Due in 7 days',
      icon: Icons.school_outlined,
      tag: 'UTS',
    ),
    ClassroomItem(
      title: 'Final Project',
      description: 'Jangan lupa submit project akhir semester sebelum deadline.',
      subtitle: 'Due in 14 days',
      icon: Icons.flag_outlined,
      tag: 'Project',
    ),
    ClassroomItem(
      title: 'Team Meeting',
      description: 'Koordinasi dengan tim untuk pengembangan fitur tambahan aplikasi.',
      subtitle: 'Today 14:00',
      icon: Icons.people_outline,
      tag: 'Meeting',
    ),
    ClassroomItem(
      title: 'Research Task',
      description: 'Riset best practice Flutter UI/UX dari repository open source.',
      subtitle: 'Posted today',
      icon: Icons.search_outlined,
      tag: 'Riset',
    ),
    ClassroomItem(
      title: 'Submission Due',
      description: 'Pastikan semua file sudah di-submit ke repository GitHub.',
      subtitle: 'Due tomorrow',
      icon: Icons.upload_file_outlined,
      tag: 'Submit',
    ),
    ClassroomItem(
      title: 'Office Hours',
      description: 'Datang ke sesi tanya jawab dengan dosen setiap hari Rabu.',
      subtitle: 'Every Wednesday',
      icon: Icons.support_agent_outlined,
      tag: 'Info',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const _ClassroomHeader(),
          _SectionHeader(itemCount: items.length),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 24),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _ClassroomItemCard(item: items[index], index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ClassroomHeader extends StatelessWidget {
  const _ClassroomHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 52, 16, 22),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryDark, AppColors.primaryLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.school_rounded, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Flutter Classroom',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const Spacer(),
              Icon(Icons.notifications_none_rounded,
                  color: Colors.white.withValues(alpha: 0.75), size: 22),
              const SizedBox(width: 14),
              Icon(Icons.more_vert_rounded,
                  color: Colors.white.withValues(alpha: 0.75), size: 22),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Praktikum 3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Row, Column, Expanded, dan Card — tampilan stream kelas.',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.7),
              fontSize: 12.5,
            ),
          ),
          const SizedBox(height: 18),
          const Row(
            children: [
              _HeaderChip(label: 'Stream', isSelected: true),
              SizedBox(width: 10),
              _HeaderChip(label: 'Classwork'),
              SizedBox(width: 10),
              _HeaderChip(label: 'People'),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeaderChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const _HeaderChip({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.white
            : Colors.white.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? AppColors.primaryDark : Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final int itemCount;

  const _SectionHeader({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Up next',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const Spacer(),
          Text(
            '$itemCount items',
            style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _ClassroomItemCard extends StatelessWidget {
  final ClassroomItem item;
  final int index;

  const _ClassroomItemCard({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    final Color avatarColor =
        AppColors.avatarPalette[index % AppColors.avatarPalette.length];
    final Color tagColor =
        AppColors.tagPalette[index % AppColors.tagPalette.length];
    final String avatarLetter = item.title[0].toUpperCase();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.07),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: avatarColor,
                child: Text(
                  avatarLetter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.description,
                      style: const TextStyle(
                        fontSize: 12.5,
                        color: AppColors.textSecondary,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                item.subtitle,
                style: const TextStyle(
                  fontSize: 10.5,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 56),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: tagColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(item.icon, size: 12, color: tagColor),
                      const SizedBox(width: 4),
                      Text(
                        item.tag,
                        style: TextStyle(
                          fontSize: 10.5,
                          color: tagColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                _ActionButton(
                  icon: Icons.visibility_outlined,
                  label: 'Lihat',
                  color: AppColors.primary,
                ),
                const SizedBox(width: 16),
                _ActionButton(
                  icon: Icons.chat_bubble_outline,
                  label: 'Komentar',
                  color: AppColors.textSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 13, color: color),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}