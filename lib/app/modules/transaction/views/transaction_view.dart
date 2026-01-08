import 'package:abadifarm/app/utils/constants.dart';
import 'package:abadifarm/app/utils/ui_sizes.dart';
import 'package:flutter/material.dart';
import 'package:abadifarm/app/utils/themes.dart';
import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: ThemesConfig.padding_10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.close, size: 26),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Catat Pembelian",
                        style: TextStyle(fontSize: baseFontSize.medium_22),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: UiSizes.height_10),
              Divider(color: Colors.grey[200]),
              SizedBox(height: UiSizes.height_20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Informasi Umum",
                  style: TextStyle(fontSize: baseFontSize.normal_20),
                ),
              ),
              SizedBox(height: UiSizes.height_10),
              _label("Supplier"),
              _inputBox(
                hint: "Pilih Supplier",
                suffix: Icons.arrow_forward_ios,
              ),
              SizedBox(height: 16),
              _label("Tanggal Transaksi"),
              _inputBox(hint: "10/24/2023", suffix: Icons.calendar_month),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _label("Detail Item"),
                  Text(
                    "2 Items Added",
                    style: TextStyle(
                      color: ThemesConfig.secondaryBackgroundColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle, color: Colors.green, size: 10),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ayam Broiler - Grade A",
                                style: _titleStyle(),
                              ),
                              Text("Stok Saat Ini: 450 Kg", style: _subText()),
                            ],
                          ),
                        ),
                        Icon(Icons.delete, color: Colors.red),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(child: _numberBox("JUMLAH (KG)", "150")),
                        SizedBox(width: 12),
                        Expanded(child: _numberBox("HARGA / KG", "22000")),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal", style: _subText()),
                        Text(
                          "Rp 3.300.000",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(12),
                decoration: _cardDecoration(),
                child: Row(
                  children: [
                    Icon(Icons.inventory, color: Colors.greenAccent),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Update Stok Gudang", style: _titleStyle()),
                          Text(
                            "Stok akan bertambah otomatis",
                            style: _subText(),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (_) {},
                      activeThumbColor: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Transaksi", style: _subText()),
                  Text(
                    "Rp 4.050.000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Simpan Transaksi",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.greenAccent),
                  label: Text(
                    "Tambah Item Lain",
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _label(String text) => Padding(
  padding: EdgeInsets.only(bottom: 6),
  child: Align(
    alignment: Alignment.topLeft,
    child: Text(
      text,
      style: TextStyle(
        fontSize: baseFontSize.normal_16,
        color: ThemesConfig.baseTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

Widget _inputBox({required String hint, IconData? suffix}) => Container(
  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
  decoration: _cardDecoration(),
  child: Row(
    children: [
      Expanded(child: Text(hint, style: _subText())),
      if (suffix != null) Icon(suffix, color: Colors.greenAccent),
    ],
  ),
);

Widget _numberBox(String label, String value) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(label, style: _subText()),
    SizedBox(height: 6),
    Container(
      padding: EdgeInsets.all(12),
      decoration: _cardDecoration(),
      child: Text(value, style: _titleStyle()),
    ),
  ],
);

BoxDecoration _cardDecoration() => BoxDecoration(
  color: ThemesConfig.baseBackgroundColor,
  borderRadius: BorderRadius.circular(12),
  border: Border.all(color: Colors.green.shade900),
);

TextStyle _titleStyle() =>
    TextStyle(color: ThemesConfig.baseTextColor, fontWeight: FontWeight.w600);

TextStyle _subText() => TextStyle(
  color: ThemesConfig.baseTextColor,
  fontSize: baseFontSize.normal_12,
);
