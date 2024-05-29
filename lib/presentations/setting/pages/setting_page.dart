import 'package:flutter/material.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/setting/pages/discount_page.dart';
import 'package:flutter_cafe/presentations/setting/pages/manage_printer_page.dart';
import 'package:flutter_cafe/presentations/setting/pages/sync_data_page.dart';
import 'package:flutter_cafe/presentations/setting/pages/tax_page.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int currentIndex = 0;

  void indexValue(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT CONTENT
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                      color: AppColors.charchoal,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SpaceHeight(16.0),
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Assets.icons.kelolaDiskon.svg(),
                    title: const Text('Kelola Diskon'),
                    subtitle: const Text('Kelola Diskon Pelanggan'),
                    textColor: AppColors.primary,
                    tileColor: currentIndex == 0
                        ? AppColors.primary.withOpacity(0.1)
                        : Colors.transparent,
                    onTap: () => indexValue(0),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Assets.icons.kelolaProduk.svg(),
                    title: const Text('Sync Data'),
                    subtitle: const Text('Siknkronisasi data'),
                    textColor: AppColors.primary,
                    tileColor: currentIndex == 1
                        ? AppColors.primary.withOpacity(0.1)
                        : Colors.transparent,
                    onTap: () => indexValue(1),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Assets.icons.kelolaPajak.svg(),
                    title: const Text('Perhitungan Biaya'),
                    subtitle: const Text('Kelola biaya diluar biaya modal'),
                    textColor: AppColors.primary,
                    tileColor: currentIndex == 2
                        ? AppColors.primary.withOpacity(0.1)
                        : Colors.transparent,
                    onTap: () => indexValue(2),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Assets.icons.kelolaPrinter.svg(),
                    title: const Text('Kelola Printer'),
                    subtitle: const Text('Tambah atau hapus printer'),
                    textColor: AppColors.primary,
                    tileColor: currentIndex == 3
                        ? AppColors.primary.withOpacity(0.1)
                        : Colors.transparent,
                    onTap: () => indexValue(3),
                  ),
                ],
              ),
            ),
          ),

          // RIGHT CONTENT
          Expanded(
            flex: 4,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: IndexedStack(
                  index: currentIndex,
                  children: const [
                    DiscountPage(),
                    // SyncDataPage(),
                    SyncDataPage(),
                    TaxPage(),
                    ManagePrinterPage(),
                    // ManageDiscount(),
                    // ManagePrinterPage(),
                    // ManageTax(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
