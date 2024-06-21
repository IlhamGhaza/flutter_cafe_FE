import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/data/datasources/auth_remotes_datasource.dart';
import 'package:flutter_cafe/data/datasources/discount_remote_datasource.dart';
import 'package:flutter_cafe/data/datasources/order_remote_datasource.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/data/datasources/product_remotes_datasource.dart';
import 'package:flutter_cafe/data/datasources/reservation_remote_datasource.dart';
import 'package:flutter_cafe/presentations/auth/bloc/login/login_bloc.dart';
import 'package:flutter_cafe/presentations/auth/bloc/login_page.dart';
import 'package:flutter_cafe/presentations/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_cafe/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_cafe/presentations/home/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_cafe/presentations/home/bloc/order/order_bloc.dart';
import 'package:flutter_cafe/presentations/home/pages/dashboard_page.dart';
import 'package:flutter_cafe/presentations/report/bloc/item_sales_report/item_sales_report_bloc.dart';
import 'package:flutter_cafe/presentations/report/bloc/report/transaction_report_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/add_reservation/add_reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/edit_reservation/edit_reservation_bloc.dart';
import 'package:flutter_cafe/presentations/reservation/bloc/reservation/reservation_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/add_discount/add_discount_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/discount/discount_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/edit_discount/edit_discount_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/sync_order/sync_order_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/sync_product/sync_product_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SyncProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              LocalProductBloc(ProductLocalDatasource.instance),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(),
        ),
        BlocProvider(
          create: (context) => SyncOrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => DiscountBloc(DiscountRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AddDiscountBloc(DiscountRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              TransactionReportBloc(ProductLocalDatasource.instance),
        ),
        BlocProvider(
            create: (context) =>
                ReservationBloc(ReservationRemoteDatasource())),
        BlocProvider(
          create: (context) => EditDiscountBloc(DiscountRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AddReservationBloc(
            ReservationRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              EditReservationBloc(ReservationRemoteDatasource()),
        ),
        BlocProvider(
            create: (context) =>
                ItemSalesReportBloc(ProductLocalDatasource.instance))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pos cafe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDataSource().isAuthDataExist(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (snapshot.hasData) {
              if (snapshot.data!) {
                return const DashboardPage();
              } else {
                return const LoginPage();
              }
            }
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          },
        ),
      ),
    );
  }
}
