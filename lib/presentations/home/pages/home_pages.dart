import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cafe/core/components/buttons.dart';
import 'package:flutter_cafe/core/components/spaces.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/core/extensions/build_context_ext.dart';
import 'package:flutter_cafe/core/extensions/int_ext.dart';
import 'package:flutter_cafe/core/extensions/string_ext.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';
import 'package:flutter_cafe/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_cafe/presentations/home/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_cafe/presentations/home/dialog/discount_dialog.dart';
import 'package:flutter_cafe/presentations/home/dialog/service_dialog.dart';
import 'package:flutter_cafe/presentations/home/dialog/tax_dialog.dart';
import 'package:flutter_cafe/presentations/home/models/product_category.dart';
import 'package:flutter_cafe/presentations/home/models/product_model.dart';
import 'package:flutter_cafe/presentations/home/pages/confirm_payment_page.dart';
import 'package:flutter_cafe/presentations/home/widgets/column_button.dart';
import 'package:flutter_cafe/presentations/home/widgets/custom_tab_bar.dart';
import 'package:flutter_cafe/presentations/home/widgets/home_title.dart';
import 'package:flutter_cafe/presentations/home/widgets/order_menu.dart';
import 'package:flutter_cafe/presentations/home/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();

  @override
  void initState() {
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());

    super.initState();
  }

  void onCategoryTap(int index) {
    searchController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'confirmation_screen',
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1200) {
              return _buildWideLayout(context);
            } else if (constraints.maxWidth > 800) {
              return _buildMediumLayout(context);
            } else {
              return _buildNarrowLayout(context);
            }
          },
        ),
      ),
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: _buildLeftPanel(context),
        ),
        Expanded(
          flex: 2,
          child: _buildRightPanel(context),
        ),
      ],
    );
  }

  Widget _buildMediumLayout(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: _buildLeftPanel(context),
        ),
        Expanded(
          flex: 2,
          child: _buildRightPanel(context),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildLeftPanel(context),
          _buildRightPanel(context),
        ],
      ),
    );
  }

  Widget _buildLeftPanel(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeTitle(
                controller: searchController,
                onChanged: (value) {
                  if (value.length > 3) {
                    context
                        .read<LocalProductBloc>()
                        .add(LocalProductEvent.searchProduct(value));
                  }
                  if (value.isEmpty) {
                    context.read<LocalProductBloc>().add(
                        const LocalProductEvent.getLocalProduct());
                  }
                },
              ),
              CustomTabBar(
                tabTitles: const ['Semua', 'Makanan', 'Minuman'],
                initialTabIndex: 0,
                tabViews: [
                  _buildProductGrid(context, 3),
                  _buildProductGrid(context, 1),
                  _buildProductGrid(context, 5),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRightPanel(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Orders #1',
                  style: TextStyle(
                    color: AppColors.charchoal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(8.0),
                Row(
                  children: [
                    Button.filled(
                      width: 120.0,
                      height: 40,
                      onPressed: () {},
                      label: 'Dine In',
                    ),
                    const SpaceWidth(8.0),
                    Button.outlined(
                      width: 100.0,
                      height: 40,
                      onPressed: () {},
                      label: 'To Go',
                    ),
                  ],
                ),
                const SpaceHeight(16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item',
                      style: TextStyle(
                        color: AppColors.charchoal,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    SizedBox(
                      width: 50.0,
                      child: Text(
                        'Qty',
                        style: TextStyle(
                          color: AppColors.charchoal,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Price',
                        style: TextStyle(
                          color: AppColors.charchoal,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(8),
                const Divider(),
                const SpaceHeight(8),
                BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: Text('No Items'),
                      ),
                      loaded: (products, discount, tax, serviceCharge) {
                        if (products.isEmpty) {
                          return const Center(
                            child: Text('No Items'),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Dismissible(
                            key: UniqueKey(),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {},
                            background: Container(
                              alignment: Alignment.centerRight,
                              color: Colors.red,
                              child: const Icon(Icons.delete, color: Colors.white),
                            ),
                            child: OrderMenu(data: products[index]),
                          ),
                          separatorBuilder: (context, index) => const SpaceHeight(1.0),
                          itemCount: products.length,
                        );
                      },
                    );
                  },
                ),
                const SpaceHeight(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColumnButton(
                      label: 'Diskon',
                      svgGenImage: Assets.icons.diskon,
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => const DiscountDialog(),
                        );
                      },
                    ),
                    ColumnButton(
                      label: 'Pajak',
                      svgGenImage: Assets.icons.pajak,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const TaxDialog(),
                        );
                      },
                    ),
                    ColumnButton(
                      label: 'Layanan',
                      svgGenImage: Assets.icons.layanan,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const ServiceDialog(),
                        );
                      },
                    ),
                  ],
                ),
                const SpaceHeight(8.0),
                const Divider(),
                const SpaceHeight(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Pajak',
                      style: TextStyle(color: AppColors.grey),
                    ),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        final tax = state.maybeWhen(
                          orElse: () => 0,
                          loaded: (products, discount, tax, serviceCharge) {
                            if (products.isEmpty) {
                              return 0;
                            }
                            return tax;
                          },
                        );

                        return Text(
                          '$tax %',
                          style: const TextStyle(
                            color: AppColors.charchoal,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SpaceHeight(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Diskon',
                      style: TextStyle(color: AppColors.grey),
                    ),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        final discount = state.maybeWhen(
                          orElse: () => 0,
                          loaded: (products, discount, tax, serviceCharge) {
                            if (discount == null) {
                              return 0;
                            }
                            return discount.value!
                                .replaceAll('.00', '')
                                .toIntegerFromText;
                          },
                        );
                        return Text(
                          '$discount %',
                          style: const TextStyle(
                            color: AppColors.charchoal,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SpaceHeight(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sub total',
                      style: TextStyle(color: AppColors.grey),
                    ),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        final price = state.maybeWhen(
                          orElse: () => 0,
                          loaded: (products, discount, tax, serviceCharge) {
                            if (products.isNotEmpty) {
                              return products
                                  .map((e) => e.product.price! * e.quantity)
                                  .reduce((value, element) => value + element);
                            } else {
                              return 0;
                            }
                          },
                        );

                        return Text(price.currencyFormatRp,
                            style: const TextStyle(
                              color: AppColors.charchoal,
                              fontWeight: FontWeight.w600,
                            ));
                      },
                    )
                  ],
                ),
                const SpaceHeight(100.0),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ColoredBox(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: Button.filled(
                  onPressed: () {
                    context.push(const ConfirmPaymentPage());
                  },
                  label: 'Lanjutkan Pembayaran',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context, int categoryId) {
    return SizedBox(
      child: BlocBuilder<LocalProductBloc, LocalProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              );
            },
            loaded: (products) {
              if (products.isEmpty) {
                return const Center(
                  child: Text('No Items'),
                );
              }
              final filteredProducts = products
                  .where((element) => element.category!.id! == categoryId)
                  .toList();
              return GridView.builder(
                shrinkWrap: true,
                itemCount: filteredProducts.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.85,
                  crossAxisCount: 3,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 30.0,
                ),
                itemBuilder: (context, index) => ProductCard(
                  data: filteredProducts[index],
                  onCartButton: () {},
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _IsEmpty extends StatelessWidget {
  const _IsEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.noProduct.svg(),
          const SizedBox(height: 80.0),
          const Text(
            'Belum Ada Produk',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
