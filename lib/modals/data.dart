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

List<Map<String, dynamic>> eventDetail = [
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Kajian Fiqih',
    'date': '1 Januari 2023',
    'time': '18:00 - 21:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadz Ahmad',
    'speakerDesc': 'Ahli Fiqih dan Syariah',
    'description':
        'Kajian fiqih membahas tentang hukum-hukum Islam yang berkaitan dengan kehidupan sehari-hari.',
    'location': 'Masjid Al-Falah, Jakarta',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Kajian Fiqih"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Ceramah Agama',
    'date': '15 Februari 2023',
    'time': '19:00 - 21:00',
    'speakerImage': 'lib/assets/ustad3.png',
    'speakerName': 'Ustadzah Aisyah',
    'speakerDesc': 'Penceramah dan Motivator',
    'description':
        'Ceramah agama yang memberikan pencerahan tentang keimanan dan ketakwaan.',
    'location': 'Masjid Al-Hidayah, Bandung',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Ceramah Agama"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Seminar Pendidikan Islam',
    'date': '22 Maret 2023',
    'time': '09:00 - 12:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Prof. Dr. Yusuf',
    'speakerDesc': 'Pakar Pendidikan Islam',
    'description':
        'Seminar tentang metode pendidikan Islam yang efektif untuk generasi muda.',
    'location': 'Universitas Islam Negeri, Yogyakarta',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Seminar Pendidikan Islam"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Workshop Dakwah',
    'date': '10 April 2023',
    'time': '08:00 - 16:00',
    'speakerImage': 'lib/assets/ustad3.png',
    'speakerName': 'Ustadz Hidayat',
    'speakerDesc': 'Pendakwah dan Trainer',
    'description':
        'Workshop tentang teknik-teknik dakwah yang efektif dan inspiratif.',
    'location': 'Pusat Dakwah Islam, Surabaya',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Workshop Dakwah"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Kajian Al-Quran',
    'date': '18 Mei 2023',
    'time': '17:00 - 19:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadz Farid',
    'speakerDesc': 'Hafidz dan Ahli Tafsir',
    'description':
        'Kajian tentang tafsir Al-Quran dan makna-maknanya dalam kehidupan.',
    'location': 'Masjid Agung, Semarang',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Kajian Al-Quran"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Kuliah Umum Syariah',
    'date': '25 Juni 2023',
    'time': '14:00 - 16:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Dr. Zainab',
    'speakerDesc': 'Dosen Syariah',
    'description':
        'Kuliah umum tentang prinsip-prinsip syariah dalam ekonomi Islam.',
    'location': 'Institut Agama Islam, Malang',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Kuliah Umum Syariah"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Diskusi Panel Akhlak',
    'date': '5 Juli 2023',
    'time': '10:00 - 12:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadz Munir',
    'speakerDesc': 'Pakar Akhlak Islam',
    'description':
        'Diskusi panel tentang pentingnya akhlak mulia dalam kehidupan sehari-hari.',
    'location': 'Gedung Dakwah, Solo',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Diskusi Panel Akhlak"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Seminar Keluarga Sakinah',
    'date': '20 Agustus 2023',
    'time': '13:00 - 15:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadzah Maryam',
    'speakerDesc': 'Pakar Keluarga dan Parenting',
    'description':
        'Seminar tentang membangun keluarga sakinah, mawaddah, dan rahmah.',
    'location': 'Balai Kota, Depok',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Seminar Keluarga Sakinah"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Pelatihan Tahsin',
    'date': '30 September 2023',
    'time': '09:00 - 11:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadz Ridwan',
    'speakerDesc': 'Pengajar Tahsin',
    'description':
        'Pelatihan tahsin Al-Quran untuk meningkatkan kualitas bacaan.',
    'location': 'Pondok Pesantren, Tangerang',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Pelatihan Tahsin"),
      );
    },
  },
  {
    'imagePath': 'lib/assets/event1.png',
    'title': 'Kajian Hadits',
    'date': '10 Oktober 2023',
    'time': '16:00 - 18:00',
    'speakerImage': 'lib/assets/ustad2.png',
    'speakerName': 'Ustadz Hasan',
    'speakerDesc': 'Ahli Hadits',
    'description': 'Kajian hadits dan pemahaman tentang sunnah Rasulullah.',
    'location': 'Masjid Raya, Makassar',
    'onBookmarkPressed': () {
      SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text("Bookmarked Kajian Hadits"),
      );
    },
  },
];
