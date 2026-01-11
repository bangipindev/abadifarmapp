import 'package:flutter/material.dart';

class UbahpasswordView extends StatefulWidget {
  const UbahpasswordView({super.key});

  @override
  State<UbahpasswordView> createState() => _UbahpasswordViewState();
}

class _UbahpasswordViewState extends State<UbahpasswordView> {
  bool showOld = false;
  bool showNew = false;
  bool showConfirm = false;

  bool biometricEnabled = true;
  bool twoFactorEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('Keamanan'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ===== INFO CARD =====
              Padding(
                padding: const EdgeInsets.all(16),
                child: _securityInfoCard(),
              ),

              /// ===== PASSWORD =====
              _sectionContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _passwordField(
                      label: 'Kata Sandi Saat Ini',
                      hint: 'Masukkan kata sandi lama',
                      obscure: !showOld,
                      onToggle: () => setState(() => showOld = !showOld),
                    ),
                    const SizedBox(height: 12),
                    _passwordField(
                      label: 'Kata Sandi Baru',
                      hint: 'Minimal 8 karakter',
                      obscure: !showNew,
                      onToggle: () => setState(() => showNew = !showNew),
                    ),
                    const SizedBox(height: 12),
                    _passwordField(
                      label: 'Konfirmasi Kata Sandi',
                      hint: 'Ulangi kata sandi baru',
                      obscure: !showConfirm,
                      onToggle: () =>
                          setState(() => showConfirm = !showConfirm),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Simpan Perubahan'),
                      ),
                    ),
                  ],
                ),
              ),

              _sectionTitle('VERIFIKASI & KEAMANAN'),
              _sectionContainer(
                child: Column(
                  children: [
                    _switchTile(
                      icon: Icons.lock_outline,
                      title: 'Verifikasi Dua Langkah',
                      subtitle: 'Aktifkan OTP via SMS/WA',
                      value: twoFactorEnabled,
                      onChanged: (v) => setState(() => twoFactorEnabled = v),
                    ),
                    const Divider(),
                    _switchTile(
                      icon: Icons.fingerprint,
                      title: 'Masuk dengan Biometrik',
                      subtitle: 'FaceID / TouchID',
                      value: biometricEnabled,
                      onChanged: (v) => setState(() => biometricEnabled = v),
                    ),
                  ],
                ),
              ),

              _sectionTitle('AKTIVITAS'),
              _sectionContainer(
                child: Column(
                  children: [
                    _arrowTile(
                      icon: Icons.history,
                      title: 'Riwayat Login',
                      subtitle: 'Terakhir login hari ini, 09:41',
                    ),
                    const Divider(),
                    _arrowTile(
                      icon: Icons.devices,
                      title: 'Perangkat Terdaftar',
                      subtitle: 'iPhone 13, MacBook Pro',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  /// ===== INFO CARD =====
  Widget _securityInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green, size: 20),
                    SizedBox(width: 6),
                    Text(
                      'Akun Terlindungi',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                  'Pemeriksaan keamanan terakhir:\nBaru saja.',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.blue],
              ),
            ),
            child: const Icon(Icons.shield, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

/// ================= WIDGET HELPERS =================

Widget _sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    ),
  );
}

Widget _sectionContainer({required Widget child}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    ),
  );
}

Widget _passwordField({
  required String label,
  required String hint,
  required bool obscure,
  required VoidCallback onToggle,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(fontSize: 12)),
      const SizedBox(height: 6),
      TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: IconButton(
            icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: onToggle,
          ),
        ),
      ),
    ],
  );
}

Widget _switchTile({
  required IconData icon,
  required String title,
  required String subtitle,
  required bool value,
  required ValueChanged<bool> onChanged,
}) {
  return ListTile(
    leading: Icon(icon, color: Colors.blue),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Switch(value: value, onChanged: onChanged),
    contentPadding: EdgeInsets.zero,
  );
}

Widget _arrowTile({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return ListTile(
    leading: Icon(icon, color: Colors.orange),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.chevron_right),
    contentPadding: EdgeInsets.zero,
    onTap: () {},
  );
}
