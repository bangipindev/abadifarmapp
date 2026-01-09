import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abadifarm/app/routes/app_pages.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    bool pesananBaru = true;
    bool stokMenipis = true;
    bool emailNewsletter = false;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/icon/icon.png"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.edit,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Abadi Farm",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text("Administrator", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),

            SizedBox(height: 24),

            _sectionTitle("AKUN SAYA"),
            _card(
              child: Column(
                children: [
                  _menuItem(
                    icon: Icons.person,
                    title: "Profil Pribadi",
                    subtitle: "Edit nama, email, dan foto",
                    onTap: () {
                      Get.toNamed(Routes.DETAIL_STORE);
                    },
                  ),
                  _divider(),
                  _menuItem(
                    icon: Icons.lock,
                    title: "Keamanan & Password",
                    subtitle: "Ubah sandi dan 2FA",
                    onTap: () {
                      Get.toNamed(Routes.UBAHPASSWORD);
                    },
                  ),
                  _divider(),
                  _menuItem(
                    icon: Icons.store,
                    title: "Info Toko",
                    onTap: () {
                      Get.toNamed(Routes.DETAIL_STORE);
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            _sectionTitle("NOTIFIKASI"),
            _card(
              child: Column(
                children: [
                  _switchItem(
                    title: "Pesanan Baru",
                    subtitle: "Notifikasi push saat ada order masuk",
                    value: pesananBaru,
                    onChanged: (val) {
                      setState(() => pesananBaru = val);
                    },
                  ),
                  _divider(),
                  _switchItem(
                    title: "Stok Menipis",
                    subtitle: "Peringatan saat produk hampir habis",
                    value: stokMenipis,
                    onChanged: (val) {
                      setState(() => stokMenipis = val);
                    },
                  ),
                  _divider(),
                  _switchItem(
                    title: "Email Newsletter",
                    value: emailNewsletter,
                    onChanged: (val) {
                      setState(() => emailNewsletter = val);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// =================== WIDGET KECIL ===================

Widget _sectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
  );
}

Widget _card({required Widget child}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: child,
  );
}

Widget _menuItem({
  required IconData icon,
  required String title,
  String? subtitle,
  VoidCallback? onTap,
}) {
  return ListTile(
    leading: CircleAvatar(
      // ignore: deprecated_member_use
      backgroundColor: Colors.blue.withOpacity(0.1),
      child: Icon(icon, color: Colors.blue),
    ),
    title: Text(title),
    subtitle: subtitle != null ? Text(subtitle) : null,
    trailing: Icon(Icons.chevron_right),
    onTap: onTap,
  );
}

Widget _switchItem({
  required String title,
  String? subtitle,
  required bool value,
  required Function(bool) onChanged,
}) {
  return SwitchListTile(
    value: value,
    onChanged: onChanged,
    title: Text(title),
    subtitle: subtitle != null ? Text(subtitle) : null,
    activeThumbColor: Colors.blue,
  );
}

Widget _divider() {
  return Divider(height: 1);
}
