import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/presentations/setting/bloc/sync_order/sync_order_bloc.dart';
import 'package:flutter_cafe/presentations/setting/bloc/sync_product/sync_product_bloc.dart';
import 'package:flutter_cafe/presentations/setting/widgets/settings_title.dart';

class SyncDataPage extends StatefulWidget {
  const SyncDataPage({super.key});

  @override
  State<SyncDataPage> createState() => _SyncDataPageState();
}

class _SyncDataPageState extends State<SyncDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(height: 16.0),
        const SettingsTitle('Sync Data'),
        const SizedBox(height: 24),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocConsumer<SyncProductBloc, SyncProductState>(
                listener: (context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      error: (message) =>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.red,
                          )),
                      loaded: (productResponseModel) {
                        ProductLocalDatasource.instance.deleteAllProducts();
                        ProductLocalDatasource.instance
                            .insertProducts(productResponseModel.data!);

                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Sync Product Success'),
                          backgroundColor: Colors.green,
                        ));
                      });
                },
                builder: (context, state) {
                  return state.maybeWhen(orElse: () {
                    return ElevatedButton(
                        onPressed: () {
                          context
                              .read<SyncProductBloc>()
                              .add(const SyncProductEvent.syncProduct());
                        },
                        child: const Text(
                          'Sync Product',
                          style: TextStyle(color: AppColors.primary),
                        ));
                  }, loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  });
                },
              ),
              const SizedBox(
                width: 16.0,
              ),
              BlocConsumer<SyncOrderBloc, SyncOrderState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ));
                    },
                    loaded: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Sync Order Success'),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(orElse: () {
                    return ElevatedButton(
                      onPressed: () {
                        context
                            .read<SyncOrderBloc>()
                            .add(const SyncOrderEvent.syncOrder());
                      },
                      child: const Text(
                        'Sync Order',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    );
                  }, loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  });
                },
              )
            ],
          ),
        ),
      ]),
    );
  }
}
