import 'package:abadifarm/app/utils/constants.dart';
import 'package:abadifarm/app/utils/themes.dart';
import 'package:abadifarm/app/utils/ui_sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_store_controller.dart';

class DetailStoreView extends GetView<DetailStoreController> {
  const DetailStoreView({super.key});
  @override
  Widget build(BuildContext context) {
    UiSizes.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Toko'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit, color: Colors.blue),
          ),
        ],
      ),
      backgroundColor: ThemesConfig.baseBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/logo/logos.png'),
                    ),

                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Icon(Icons.check, size: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Abadi Farm",
                style: TextStyle(
                  fontSize: baseFontSize.medium_22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rumah Pemotongan Ayam",
                style: TextStyle(
                  fontSize: baseFontSize.normal_14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: ThemesConfig.padding_20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  actionItem(icon: Icons.phone, label: "Telepon"),
                  actionItem(icon: Icons.email, label: "Email"),
                  actionItem(icon: Icons.location_on, label: "Maps"),
                  actionItem(icon: Icons.share, label: "Bagikan"),
                ],
              ),
              SizedBox(height: ThemesConfig.padding_20),
              Container(
                height: UiSizes.height_200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ThemesConfig.netralBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4), // shadow ke bawah
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        child: Text(
                          "Tentang Toko",
                          style: TextStyle(
                            fontSize: baseFontSize.medium_22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: ThemesConfig.padding_10),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(color: Colors.black87, height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ThemesConfig.padding_20),
              Container(
                height: UiSizes.height_200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ThemesConfig.netralBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4), // shadow ke bawah
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jam Operasional",
                              style: TextStyle(
                                fontSize: baseFontSize.medium_22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFDCFCE7),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Buka Sekarang",
                                style: TextStyle(color: Color(0xFF007A2B)),
                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(height: ThemesConfig.padding_10),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.punch_clock)),
                        title: Text('Senin - Jumat'),
                        subtitle: Text(
                          'Sewaktu-waktu bisa berubah',
                          style: TextStyle(fontSize: baseFontSize.normal_12),
                        ),
                        trailing: Text('08:00 - 17:00'),
                      ),
                      ListTile(
                        leading: CircleAvatar(child: Icon(Icons.lock_clock)),
                        title: Text('Sabtu - Ahad'),
                        subtitle: Text(
                          'Sewaktu-waktu bisa berubah',
                          style: TextStyle(fontSize: baseFontSize.normal_12),
                        ),
                        trailing: Text('08:00 - 15:00'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ThemesConfig.padding_20),
            ],
          ),
        ),
      ),
    );
  }
}

Widget actionItem({
  required IconData icon,
  required String label,
  VoidCallback? onTap,
}) {
  return InkWell(
    onTap: () {
      return print(label);
    },
    borderRadius: BorderRadius.circular(50),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Colors.blue.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.blue, size: 24),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ],
    ),
  );
}
