import 'package:abadifarm/app/model/stock_barang_model.dart';
import 'package:abadifarm/app/utils/themes.dart';
import 'package:flutter/material.dart';

class StockBarangCard extends StatelessWidget {
  final StockBarang data;
  const StockBarangCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: ThemesConfig.primaryBackgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ThemesConfig.primaryBorderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              data.image,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAME
                Text(
                  data.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ThemesConfig.primaryTextColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 6),

                // CODE + UNIT
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        data.code,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Unit: ${data.unit}",
                      style: TextStyle(
                        color: ThemesConfig.primaryTextColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'BELI ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: ThemesConfig.secondaryTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' / ',
                                style: TextStyle(
                                  color: ThemesConfig.primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'JUAL',
                                style: TextStyle(
                                  color: ThemesConfig.tersierTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            text: '${data.hargaBeli} ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: ThemesConfig.secondaryTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' / ',
                                style: TextStyle(
                                  color: ThemesConfig.primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '${data.hargaJual}',
                                style: TextStyle(
                                  color: ThemesConfig.tersierTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "STOCK",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: ThemesConfig.secondaryTextColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          data.stock,
                          style: const TextStyle(
                            fontSize: 14,
                            color: ThemesConfig.secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// class StockBarangCard extends StatelessWidget {
//   StockBarangCard({super.key});

//   final List<StockBarang> stockBarangList = [
//     StockBarang(
//       name: "Ayam Broiler Hidup",
//       code: "BR-001",
//       unit: "Kg",
//       image: "assets/images/broiler.png",
//       hargaBeli: "Rp 19.000",
//       hargaJual: "Rp 25.000",
//       stock: "100 Pcs",
//     ),
//     StockBarang(
//       name: "Ayam Pejantan",
//       code: "PJ-002",
//       unit: "Kg",
//       image: "assets/images/broiler.png",
//       hargaBeli: "Rp 21.000",
//       hargaJual: "Rp 27.000",
//       stock: "80 Pcs",
//     ),
//     StockBarang(
//       name: "Ayam Kampung",
//       code: "AK-003",
//       unit: "Kg",
//       image: "assets/images/broiler.png",
//       hargaBeli: "Rp 45.000",
//       hargaJual: "Rp 55.000",
//       stock: "40 Pcs",
//     ),
//     StockBarang(
//       name: "Ayam Frozen",
//       code: "FR-004",
//       unit: "Kg",
//       image: "assets/images/broiler.png",
//       hargaBeli: "Rp 30.000",
//       hargaJual: "Rp 38.000",
//       stock: "120 Pcs",
//     ),
//     StockBarang(
//       name: "Ayam Fillet",
//       code: "FL-005",
//       unit: "Kg",
//       image: "assets/images/broiler.png",
//       hargaBeli: "Rp 60.000",
//       hargaJual: "Rp 75.000",
//       stock: "60 Pcs",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       width: Get.width,
//       decoration: BoxDecoration(
//         color: ThemesConfig.primaryBackgroundColor,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: ThemesConfig.primaryBorderColor),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               "assets/images/broiler.png",
//               width: 70,
//               height: 70,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Ayam Broiler Hidup",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 SizedBox(height: 6),
//                 Row(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 10,
//                         vertical: 2,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey.shade300,
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: const Text(
//                         "BR-001",
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 8),
//                     Text("Unit: Kg", style: TextStyle(fontSize: 12)),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "BELI / JUAL",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           "Rp 19.000 / Rp 25.000",
//                           style: TextStyle(fontSize: 12),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           "JUMLAH STOCK",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text("100 Pcs", style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }