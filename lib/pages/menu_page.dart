import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mwd_app/components/category_item.dart';
import 'package:mwd_app/models/waste.dart';
import 'package:mwd_app/pages/edupage.dart';
// import 'package:mwd_app/pages/listedu_page.dart';
import 'package:mwd_app/pages/login_page.dart';
import 'package:mwd_app/pages/splash_chatbot.dart';
// import 'package:mwd_app/theme/colors.dart';

import '../components/waste_tile.dart';
import 'upload_profile_image.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // waste list
  List wasteMenu = [
    // deteksi
    Waste(
        nama: "Start Detection",
        jenis: "Deteksi Sampah di Sekitarmu",
        imagePath: "lib/images/lup.png"),

    // edu
    Waste(
        nama: "Education",
        jenis: "Tambah informasimu mengenai lingkungan",
        imagePath: "lib/images/book.png"),

    // edu
    Waste(
        nama: "Ask Wedec",
        jenis: "Wedec siap membantumu menjawab semuanya",
        imagePath: "lib/images/wedec-head.png"),
  ];

  // navigate to detection
  void navigateWasteDetails(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UploadProfileImage(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EduPage(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SplashScreen(),
          ),
        );
        break;
      default:
      // Do something if the index is out of bounds or handle it accordingly
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Center(
          child: Text(
            'MwD',
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
        actions: [
          // notification
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined,
                color: Colors.grey[900]),
          )
        ],
      ),
      // Tambahkan Drawer di sini
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 207, 215, 213),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[500],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/images/profil_image.jpg'),
                    radius: 35, // Sesuaikan ukuran radius sesuai kebutuhan
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Hello Anna !',
                    style: GoogleFonts.zenMaruGothic(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    'Lanjutkan Perjalananmu',
                    style: GoogleFonts.zenMaruGothic(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            // Tambahkan item-menu drawer sesuai kebutuhan Anda
            ListTile(
              leading: Icon(
                Icons.account_circle, // Ikon profil
                color: Colors.grey[600], // Warna ikon
              ),
              title: Text('Profil'),
              onTap: () {
                // Tambahkan logika jika item-menu ditekan
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app, // Ikon logout
                color: Colors.grey[600], // Warna ikon
              ),
              title: Text('Logout'),
              onTap: () {
                // Tambahkan logika jika item-menu ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris untuk gambar profil, tulisan utama, dan sub-tulisan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                // greeting
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tulisan utama
                      Text(
                        'Hello Anna !',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),

                      // Sub-tulisan
                      Text(
                        'Lanjutkan Perjalananmu',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 45),

                // profil image
                CircleAvatar(
                  backgroundImage: AssetImage('lib/images/profil_image.jpg'),
                  radius: 35, // Sesuaikan ukuran radius sesuai kebutuhan
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // recent info
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color.fromRGBO(0, 185, 142,
                  //         0.315), // Sesuaikan warna dengan preferensi desain Anda
                  //     borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(
                  //       color: const Color.fromARGB(250, 255, 255,
                  //           255), // You can adjust the color of the outline
                  //       width: 1.0, // You can adjust the width of the outline
                  //     ),
                  //   ),
                  //   margin: const EdgeInsets.symmetric(horizontal: 25),
                  //   padding: const EdgeInsets.all(10),
                  //   child: Text(
                  //     'Recent Information',
                  //     style: TextStyle(
                  //       fontSize: 16,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 185, 142, 1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // image
                        Image.asset(
                          'lib/images/duithijau.png',
                          height: 75,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // message
                            Text(
                              'Quotes of the day',
                              style: GoogleFonts.zenMaruGothic(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const SizedBox(
                              width: 160,
                              child: Text(
                                "Memelihara Lingkungan Sejatinya Memelihara Kehidupan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 35,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 165, 122, 1),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Center(
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[600], // Warna ikon pencarian
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here..",
                        hintStyle: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mic,
                      color: Colors.grey[600], // Warna ikon mikrofon
                    ),
                    onPressed: () {
                      // Tindakan yang akan diambil ketika ikon mikrofon ditekan
                    },
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          const SizedBox(width: 10),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryListItem(
                    imagePath: "lib/images/leaves.png", imageName: "Organik"),
                SizedBox(width: 8),
                CategoryListItem(
                    imagePath: "lib/images/molecular.png",
                    imageName: "Anorganik"),
                SizedBox(width: 8),
                CategoryListItem(
                    imagePath: "lib/images/science.png", imageName: "B3"),
                SizedBox(width: 8),
                CategoryListItem(
                    imagePath: "lib/images/organik.png", imageName: "Organik"),
                SizedBox(width: 8),
              ],
            ),
          ),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Waste Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Baris untuk Start Detection dan Education
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Start Detection
                      WasteTile(
                        waste: wasteMenu[0],
                        onTap: () => navigateWasteDetails(0),
                      ),
                      // Education
                      WasteTile(
                        waste: wasteMenu[1],
                        onTap: () => navigateWasteDetails(1),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 20), // Jarak antara Start Detection dan Education
                  // Ask Wedec
                  WasteTile(
                    waste: wasteMenu[2],
                    onTap: () => navigateWasteDetails(2),
                  ),
                ],
              ),
            ),
          ),

          // //popular food
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          //   padding: const EdgeInsets.all(20),
          //   child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             //image
          //             Image.asset(
          //               'lib/images/water-bottle.png',
          //               height: 60,
          //             ),

          //             const SizedBox(width: 20),

          //             //name and jenis
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 //nama
          //                 Text(
          //                   "Botol Plastik",
          //                   style: GoogleFonts.dmSerifDisplay(fontSize: 18),
          //                 ),

          //                 const SizedBox(height: 10),

          //                 // jenis
          //                 Text(
          //                   'Anorganik',
          //                   style: TextStyle(color: Colors.grey[700]),
          //                 )
          //               ],
          //             ),
          //           ],
          //         )

          //         //
          //       ]),
          // )
        ],
      ),

      // image
    );
  }
}
