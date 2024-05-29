import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/data/models/response/product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_product_event.dart';
part 'local_product_state.dart';
part 'local_product_bloc.freezed.dart';

class LocalProductBloc extends Bloc<LocalProductEvent, LocalProductState> {
  final ProductLocalDatasource productLocalDatasource;

  LocalProductBloc(this.productLocalDatasource) : super(_Initial()) {
    on<_GetLocalProduct>((event, emit) async {
      // TODO: implement event handler
      emit(const _Loading());
      final result = await productLocalDatasource.getProducts();

      emit(_Loaded(result));
    });

    on<_SearchProduct>((event, emit) async {
      emit(const _Loading());
      final allProducts = await productLocalDatasource.getProducts();

      final searchProduct = allProducts
          .where((element) =>
              element.name!.toLowerCase().contains(event.query.toLowerCase()))
          .toList();
      emit(_Loaded(searchProduct));
    });
  }
}
