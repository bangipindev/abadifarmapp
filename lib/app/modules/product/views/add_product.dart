import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:flutter/material.dart';

class TambahMasterBarangPage extends StatefulWidget {
  const TambahMasterBarangPage({super.key});

  @override
  State<TambahMasterBarangPage> createState() => _TambahMasterBarangPageState();
}

class _TambahMasterBarangPageState extends State<TambahMasterBarangPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController hargaBeliController = TextEditingController();
  final TextEditingController hargaJualController = TextEditingController();
  final TextEditingController stokController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();

  String? selectedKategori;

  final List<String> kategoriList = [
    'Ayam Karkas',
    'Paha',
    'Sayap',
    'Boneless',
    'Sampingan',
    'Lainnya',
  ];

  bool isLoading = false;

  void submitForm() {
    if (!_formKey.currentState!.validate()) return;

    setState(() => isLoading = true);

    // Simulasi simpan data
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => isLoading = false);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Barang berhasil disimpan')));

      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Produk'),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(15),
            children: [
              _uploadFoto(),
              SizedBox(height: 10),

              _input(
                label: 'Nama Barang',
                controller: namaController,
                hint: 'Contoh: Ayam Karkas',
                validator: (v) => v!.isEmpty ? 'Nama barang wajib diisi' : null,
              ),
              SizedBox(height: 16),
              _dropdownKategori(),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _input(
                      label: 'Harga Beli',
                      controller: hargaBeliController,
                      keyboardType: TextInputType.number,
                      prefix: 'Rp ',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _input(
                      label: 'Harga Jual',
                      controller: hargaJualController,
                      keyboardType: TextInputType.number,
                      prefix: 'Rp ',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),
              _stokInput(),

              SizedBox(height: 12),
              _input(
                label: 'Deskripsi Produk',
                controller: deskripsiController,
                maxLines: 4,
                hint:
                    'Masukkan detail produk seperti ukuran, warna, atau spesifikasi lainnya...',
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Batal'),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.blue.shade600,
                        ),
                      ),
                      onPressed: isLoading ? null : submitForm,
                      child: isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'Simpan Barang',
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.size_20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _uploadFoto() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(Icons.camera_alt_outlined, size: 40),
          SizedBox(height: 8),
          Text('Upload Foto Produk'),
          SizedBox(height: 4),
          Text(
            'Tambahkan hingga 5 foto produk (Maks 5MB)',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // TODO: Integrasi image_picker
            },
            child: Text('Pilih Foto'),
          ),
        ],
      ),
    );
  }

  Widget _dropdownKategori() {
    return DropdownButtonFormField<String>(
      isDense: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      initialValue: selectedKategori,
      hint: const Text("Pilih Kategori"),
      items: kategoriList
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (value) {
        setState(() => selectedKategori = value);
      },
      validator: (v) => v == null ? 'Kategori wajib dipilih' : null,
    );
  }

  Widget _stokInput() {
    return Row(
      children: [
        Expanded(
          child: _input(
            label: 'Stok Awal',
            controller: stokController,
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }

  Widget _input({
    required String label,
    required TextEditingController controller,
    String? hint,
    String? prefix,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          validator: validator,
          style: TextStyle(fontSize: 13),
          decoration: InputDecoration(
            hintText: hint,
            prefixText: prefix,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
