import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/auth/bloc/login_page.dart';
import 'package:flutter_cafe/presentations/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_cafe/presentations/history/pages/history_page.dart';
import 'package:flutter_cafe/presentations/home/pages/home_pages.dart';
import 'package:flutter_cafe/presentations/home/widgets/nav_item.dart';
import 'package:flutter_cafe/presentations/report/pages/report_page.dart';
import 'package:flutter_cafe/presentations/reservation/pages/reservation_page.dart';
import 'package:flutter_cafe/presentations/setting/pages/setting_page.dart';
import 'package:flutter_cafe/presentations/setting/pages/sync_data_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const ReportPage(),
    const SettingsPage(),
    const Center(child: Text('This is page 3')),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            SingleChildScrollView(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(16.0)),
                child: SizedBox(
                  height: context.deviceHeight - 20.0,
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Column(
                      children: [
                        NavItem(
                          iconPath: Assets.icons.homeResto.path,
                          isActive: _selectedIndex == 0,
                          onTap: () => _onItemTapped(0),
                        ),
                        NavItem(
                          iconPath: Assets.icons.history.path,
                          isActive: _selectedIndex == 1,
                          onTap: () => _onItemTapped(1),
                        ),
                        NavItem(
                          iconPath: Assets.icons.discount.path,
                          isActive: _selectedIndex == 2,
                          onTap: () => _onItemTapped(2),
                        ),
                        // NavItem(
                        //   iconPath: Assets.icons.calendar.path,
                        //   isActive: _selectedIndex == 2,
                        //   onTap: () => _onItemTapped(2),
                        // ),

                        NavItem(
                          iconPath: Assets.icons.setting.path,
                          isActive: _selectedIndex == 3,
                          onTap: () => _onItemTapped(3),
                        ),
                        BlocListener<LogoutBloc, LogoutState>(
                          listener: (context, state) {
                            state.maybeMap(
                              orElse: () {},
                              error: (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(e.message)));
                              },
                              success: (value) {
                                AuthLocalDataSource().removeAuthData();
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Logout Success'),
                                  backgroundColor: AppColors.primary,
                                ));

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                            );
                          },
                          child: NavItem(
                            iconPath: Assets.icons.logout.path,
                            isActive: false,
                            onTap: () {
                              context
                                  .read<LogoutBloc>()
                                  .add(const LogoutEvent.logout());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
