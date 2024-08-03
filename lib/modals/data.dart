import 'package:flutter/material.dart';

List<Map<String, dynamic>> communityCards = [
  {
    'title': 'Kajian Tafsir Al-Qur\'an',
    'description':
        'Bergabunglah dalam kajian mendalam tentang tafsir Al-Qur\'an dan pemahamannya.',
    'avatarUrl': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'date': '2024-08-01'
  },
  {
    'title': 'Workshop Hadis',
    'description':
        'Workshop tentang riwayat dan aplikasi hadis dalam kehidupan sehari-hari.',
    'avatarUrl': 'lib/assets/ustad2.png',
    'name': 'Ustadzah Fatimah',
    'date': '2024-08-05'
  },
  {
    'title': 'Kajian Fiqih',
    'description':
        'Diskusi mengenai prinsip-prinsip fiqih dan aplikasinya dalam konteks modern.',
    'avatarUrl': 'lib/assets/ustad3.png',
    'name': 'Ustadz Ibrahim',
    'date': '2024-08-10'
  },
  {
    'title': 'Seminar Akhlak',
    'description':
        'Seminar tentang pengembangan akhlak dan karakter sesuai ajaran Islam.',
    'avatarUrl': 'lib/assets/ustad.png',
    'name': 'Ustadzah Aisyah',
    'date': '2024-08-12'
  },
  {
    'title': 'Kajian Sejarah Islam',
    'description':
        'Kajian mendalam tentang sejarah Islam dan tokoh-tokoh pentingnya.',
    'avatarUrl': 'lib/assets/ustad2.png',
    'name': 'Ustadz Ali',
    'date': '2024-08-15'
  },
  {
    'title': 'Webinar Sunnah',
    'description':
        'Webinar tentang praktik Sunnah dan bagaimana mengimplementasikannya dalam kehidupan sehari-hari.',
    'avatarUrl': 'lib/assets/ustad3.png',
    'name': 'Ustadzah Nur',
    'date': '2024-08-18'
  },
  {
    'title': 'Diskusi Islam Kontemporer',
    'description':
        'Diskusi mengenai isu-isu kontemporer dalam pandangan Islam.',
    'avatarUrl': 'lib/assets/ustad.png',
    'name': 'Ustadz Hasan',
    'date': '2024-08-22'
  },
  {
    'title': 'Pelatihan Dakwah',
    'description':
        'Pelatihan untuk meningkatkan keterampilan dakwah dan penyampaian pesan Islam.',
    'avatarUrl': 'lib/assets/ustad2.png',
    'name': 'Ustadzah Siti',
    'date': '2024-08-25'
  },
  {
    'title': 'Talkshow Islam Modern',
    'description':
        'Talkshow mengenai bagaimana Islam beradaptasi dengan perkembangan zaman modern.',
    'avatarUrl': 'lib/assets/ustad3.png',
    'name': 'Ustadz Rafi',
    'date': '2024-08-28'
  },
  {
    'title': 'Temu Kader Mubaligh',
    'description':
        'Temu kader untuk para mubaligh dan mubalighah guna membahas strategi dakwah yang efektif.',
    'avatarUrl': 'lib/assets/ustad.png',
    'name': 'Ustadzah Zainab',
    'date': '2024-08-30'
  }
];
List<Map<String, dynamic>> profiles = [
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      return SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  {
    'avatarImage': 'lib/assets/ustad.png',
    'name': 'Ustadz Ahmad',
    'onFollowPressed': () {
      SnackBar(content: Text("Berhasil diikuti"));
    },
  },
  // Add other profiles here
];

List<Map<String, dynamic>> eventsCard = [
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Music Concert',
    'date': '1 Januari 2023',
    'time': '18:00 - 21:00',
    'onBookmarkPressed': () {
      // Do something additional when bookmark is pressed
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Music Concert"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Art Exhibition',
    'date': '5 Januari 2023',
    'time': '10:00 - 17:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Art Exhibition"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Tech Conference',
    'date': '12 Januari 2023',
    'time': '09:00 - 16:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Tech Conference"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Food Festival',
    'date': '20 Januari 2023',
    'time': '12:00 - 22:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Food Festival"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Book Fair',
    'date': '25 Januari 2023',
    'time': '10:00 - 18:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Book Fair"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.jpg',
    'title': 'Movie Premiere',
    'date': '30 Januari 2023',
    'time': '19:00 - 22:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Movie Premiere"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.jpg',
    'title': 'Marathon',
    'date': '5 Februari 2023',
    'time': '06:00 - 12:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Marathon"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.jpg',
    'title': 'Charity Gala',
    'date': '10 Februari 2023',
    'time': '19:00 - 23:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Charity Gala"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.jpg',
    'title': 'Science Fair',
    'date': '15 Februari 2023',
    'time': '09:00 - 15:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Science Fair"));
    },
  },
  {
    'imagePath': 'lib/assets/event1.jpg',
    'title': 'Dance Competition',
    'date': '20 Februari 2023',
    'time': '14:00 - 18:00',
    'onBookmarkPressed': () {
      SnackBar(
          duration: Duration(milliseconds: 200),
          content: Text("Bookmarked Dance Competition"));
    },
  },
];
