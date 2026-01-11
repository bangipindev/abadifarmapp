import 'package:abadifarm/app/core/values/app_sizes.dart';
import 'package:abadifarm/app/widgets/banner/banner_section.dart';
import 'package:abadifarm/app/widgets/kategori/kategori_section.dart';
import 'package:abadifarm/app/widgets/neworder/new_order.dart';
import 'package:abadifarm/app/widgets/quick_action/quick_action_section.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BannerSection(),
          KategoriSection(),
          QuickActionSection(),
          NewOrderWidget(),
        ],
      ),
    );
  }
}
