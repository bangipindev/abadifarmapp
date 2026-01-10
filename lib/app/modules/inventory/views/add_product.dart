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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Tambah Produk'), centerTitle: false),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              _uploadFoto(),
              const SizedBox(height: 16),

              _input(
                label: 'Nama Barang',
                controller: namaController,
                hint: 'Contoh: Kopi Susu Gula Aren',
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

              const SizedBox(height: 12),
              _stokInput(),

              const SizedBox(height: 12),
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
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Simpan Barang',
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _uploadFoto() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Icon(Icons.camera_alt_outlined, size: 40),
          const SizedBox(height: 8),
          const Text('Upload Foto Produk'),
          const SizedBox(height: 4),
          Text(
            'Tambahkan hingga 5 foto produk (Maks 5MB)',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // TODO: Integrasi image_picker
            },
            child: const Text('Pilih Foto'),
          ),
        ],
      ),
    );
  }

  Widget _dropdownKategori() {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Kategori',
        border: OutlineInputBorder(),
      ),
      value: selectedKategori,
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
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('Pcs'),
        ),
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
          decoration: InputDecoration(
            hintText: hint,
            prefixText: prefix,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
