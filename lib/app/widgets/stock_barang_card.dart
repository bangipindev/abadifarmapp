import 'package:abadifarm/app/data/models/stock_barang_model.dart';
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
        color: ThemesConfig.baseBackgroundColor,
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
                    color: ThemesConfig.baseTextColor,
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
                        color: ThemesConfig.baseTextColor,
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
                                  color: ThemesConfig.baseTextColor,
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
                                  color: ThemesConfig.baseTextColor,
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
