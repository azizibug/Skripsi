class ModelFiqih {
// var untuk tampilan luar dulu , image sma judul

  String imageCover, titleCover;
// var untuk data yang didalam yang data ke-1 dulu yang doa sebelum
  String title, translate;

//var untuk data yang kedua yaitu untuk doa yang sesudah
  String? title2, translate2;
  String? title3, translate3;
  String? title4, translate4;

//buat constructor dari si class
  ModelFiqih(
      {required this.imageCover,
      required this.titleCover,
      // required this.arabic,
      required this.title,
      required this.translate,
      // required this.latin,

      // kita buat constructor untuk data yang nullable
      this.title2,
      this.translate2,
      this.title3,
      this.translate3,
      this.title4,
      this.translate4
       });
}

var dataListDoa = [
  ModelFiqih(
      titleCover: 'Bersuci',
      imageCover: 'assets/bersuci.png',
      title: 'Pengertian Bersuci',
      // latin: 'Alloohumma barik lanaa fiimaa razatanaa waqinaa\'adzaa bannar',
      translate:
          'Thoharoh berasal dari kata annazhofat (النظافة) yang berarti bersuci. Sedangkan menurut istilah artinya suatu perbuatan yang menjadikan sahnya shalat seperti wudhu, mandi, tayamum, dan menghilangkan najis. sedangkan tuharot (الطهارة) berarti alat untuk bersuci.',
      // arabic:
      //     'اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ',
      title2: 'Tujuh Macam Air Suci',
      // arabic2:
      //     'اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ',
      // latin2:
      //     "Alhamdu lillaahil ladzii ath'amanaa wa saqoonaa wa ja'alnaa muslimiin",
      translate2:
          'Air langit(air yang turan dari langit/air hujan) \nAir laut(air asin) \nAir sungai (air tawar) \nAir mata air(air yang keluar dari bumi) \nAir salju/air es \nAir sumur \nAir embun',
      title3: 'Berwudhu',
      translate3:
          'Wudu adalah mensucikan anggota badan tertentu dengan air untuk menghilangkan hadas kecil. Hadas kecil contohnya adalah buang angin, buang air kecil, buang air besar, dan hilang akal. Berwudu wajib dilakukan sebelum mengerjakan salat. Berwudu harus dilakukan dengan tertib dan benar sesuai dengan yang dicontohkan Nabi Muhammad saw. Jika berwudu dengan benar, kita akan mendapatkan pahala. Berwudu dengan benar akan menyehatkan badan. Anggota badan yang dibasuh air wudu akan bersinar kelak di Hari Akhir. ',
      title4: 'Tata Cara Berwudhu',
      translate4: ''),
  ModelFiqih(
    titleCover: 'Sholat',
    imageCover: 'assets/berdoa.png',
    title: 'Pengertian Sholat',
    // arabic: 'بِسْمِكَ االلّٰهُمَّ اَحْيَا وَبِاسْمِكَ اَمُوْتُ',
    // latin: "Bismikallaahuma ahyaa wa bismika amuutu",
    translate:
        'Sholat secara bahasa adalah do’a. Dan secara syara’, sebagaimana yang di sampaikan oleh imam ar Rafi’i, adalah ucapan dan pekerjaan yang di mulai dengan takbir dan di akhiri dengan salam dengan syarat-syarat tertentu.',
    title2: 'Sholat Fardhu (Wajib)',
    // arabic2:
    //     'اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرَُ',
    // latin2:
    //     "Alhamdu lillahil ladzii ahyaanaa ba'da maa amaa tanaa wa ilahin nusyuuru",
    translate2:
        'Sholat yang difardlukan ada lima. Masing-masing dari sholat tersebut wajib di laksanakan sebab masuknya awal waktu dengan kewajiban yang diperluas (tidak harus segera dilakukan) hingga waktu yang tersisa hanya cukup digunakan untuk melakukannya, maka saat itu waktunya menjadi sempit (harus segera dilakukan).',
         title3: '',
      translate3:
          '> Sholat Dhuhur\nAwal masuknya waktu sholat Dhuhur adalah saat tergelincirnya, maksudnya bergesernya matahari dari tengah langit, tidak dilihat dari kenyataannya, namun pada apa yang nampak oleh kita. Dan batas akhirnya waktu sholat Dhuhur adalah ketika bayang-bayang setiap benda seukuran dengan bendanya tanpa memasukkan bayang-bayang yang nampak saat zawal (gesernya matahari).\n> Sholat Ashar\nDisebut dengan sholat Ashar, karena pelaksanaannya mendekatii waktu terbenamnya matahari. Permulaan waktunya adalah mulai dari bertambahnya bayangan dari ukuran bendanya. \n> Sholat Maghrib\n Disebut dengan sholat Maghrib karena dikerjakan saat waktu terbenamnya matahari. Waktu sholat Maghrib hanya satu. Yaitu terbenamnya matahari, maksudnya seluruh bulatan matahari dan tidak masalah walaupun setelah itu masih terlihat sorotnya, dan kira-kira waktu yang cukup bagi seseorang untuk melakukan adzan, wudlu’ atau tayammum, menutup aurat, iqomah sholat dan sholat lima rokaat.\n> Sholat Isya’\nPermulaan waktu Isya’ adalah ketika terbenamnya mega merah.\n> Sholat Subuh\n Dan Subuh, maksudnya sholat Subuh. Secara bahasa, Subuh memiliki arti permulaan siang (pagi). Disebut demikian karena dikerjakan di permulaan siang (pagi).',
  ),
  ModelFiqih(
    titleCover: 'Puasa',
    imageCover: 'assets/puasa.jpg',
    title: 'Pengertian Puasa',
    // arabic: 'يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا',
    // latin: "Yaa robbi zidnii 'ilman warzuqnii fahmaa",
    translate:
        'Lafadz shiyam dan shaum adalah dua bentuk kalimat masdar, yang secara bahasa keduanya bermakna menahan. Dan secara syara’ adalah menahan dari hal-hal yang membatalkan puasa disertai niat tertentu sepanjang siang hari yang bisa menerima ibadah puasa dari orang muslim yang berakal dan suci dari haidl dan nifas.',
    title2: 'Hukum Berpuasa',
    // arabic2:
    //     'اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ',
    // latin2:
    //     "Allaahumma innii astaudi'uka maa 'allamtaniihi fardud-hu ilayya 'inda haajatii wa laa tansaniihi yaa robbal 'alamiin",
    translate2:
        'Puasa Ramadhan hukumnya wajib bagi muslim mukalaf yaitu yang baligh, berakal sehat dan mampu untuk puasa (tidak sedang sakit). Puasa Ramadan merupakan salah satu dari lima rukun atau pilar dari Islam. Meninggalkan puasa adalah dosa besar kalau masih mengakui atas wajibnya; sedangkan bagi yang tidak menganggap puasa Ramadan itu wajib maka hukumnya murtad atau keluar dari Islam.',
  ),
  ModelFiqih(
    titleCover: 'Zakat',
    imageCover: 'assets/zakat.png',
    title: 'Pengertian Zakat',
    // arabic: 'اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ  فَحَسِّـنْ خُلُقِىْ',
    // latin: "Alhamdulillaahi kamaa hassanta kholqii fahassin khuluqii",
    translate:
        'Zakat atau mengeluarkan sebagian harta untuk dibagikan kepada fakir miskin adalah salah satu kewajiban seorang muslim. Berbeda dengan shalat dan puasa, tidak semua muslim wajib membayar zakat. Hanya yang muslim yang dianggap kaya oleh syariah yang wajib mengeluarkan zakatnya. Batasan minimal harta yang wajib zakat disebut nisob.',
  ),
  ModelFiqih(
    titleCover: 'Haji',
    imageCover: 'assets/haji.png',
    title: 'Pengertian Haji',
    // arabic: 'اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ',
    // latin: "Alloohumma Innii a'uudzubika minal khubutsi wal khoaaitsi",
    translate:
        'Haji merupakan salah satu bentuk ibadah umat Islam selain Syahadat, salat, puasa, dan zakat. Pengertian haji adalah berkunjung ke Baitullah untuk melakukan ibadah pada waktu dan cara tertentu bagi umat Islam yang mampu baik secara fisik maupun finansial. Hukum ibadah haji tertulis dalam Alquran Surat Al-Imran ayat 97 yang menyebutkan bahwa melaksanakan ibadah haji ke Baitullah termasuk salah satu kewajiban manusia terhadap Allah SWT. Ayat dalam Surat tersebut pun menyebutkan siapa yang wajib haji, yakni orang-orang yang mampu mengadakan perjalanan ke sana.',
    title2: 'Hukum Haji',
    // arabic2: 'الْحَمْدُ لِلَّهِ الَّذِي أَذْهَبَ عَنِّي الْأَذَى وَعَافَانِيَ',
    // latin2: "Alhamdulillaahil Ladzii Adzhaba ‘Annil Adzaa Wa ‘Aa-faa-nii",
    translate2:
        'Haji adalah ibadah yang wajib dilaksanakan sekali seumur hidup oleh setiap muslim yang memenuhi syarat. Rukun haji adalah hal terpenting yang harus diketahui. Karena, meninggalkan rukun haji berarti tidak sah hajinya. Kewajiban-kewajiban haji juga harus diketahui agar supaya terhindar dari membayar dam (denda) dan agar lebih sempurna ibadahnya.',
  ),
  
];
