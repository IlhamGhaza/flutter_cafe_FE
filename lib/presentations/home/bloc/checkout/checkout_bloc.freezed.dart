// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddItemImpl with DiagnosticableTreeMixin implements _AddItem {
  const _$AddItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addItem(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addItem'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return addItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return addItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CheckoutEvent {
  const factory _AddItem(final Product product) = _$AddItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl with DiagnosticableTreeMixin implements _RemoveItem {
  const _$RemoveItemImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeItem(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeItem'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return removeItem(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return removeItem?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements CheckoutEvent {
  const factory _RemoveItem(final Product product) = _$RemoveItemImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Discount discount});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$AddDiscountImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl with DiagnosticableTreeMixin implements _AddDiscount {
  const _$AddDiscountImpl(this.discount);

  @override
  final Discount discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addDiscount(discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addDiscount'))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return addDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return addDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return addDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return addDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(this);
    }
    return orElse();
  }
}

abstract class _AddDiscount implements CheckoutEvent {
  const factory _AddDiscount(final Discount discount) = _$AddDiscountImpl;

  Discount get discount;
  @JsonKey(ignore: true)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDiscountImplCopyWith<$Res> {
  factory _$$RemoveDiscountImplCopyWith(_$RemoveDiscountImpl value,
          $Res Function(_$RemoveDiscountImpl) then) =
      __$$RemoveDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Discount discount});
}

/// @nodoc
class __$$RemoveDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveDiscountImpl>
    implements _$$RemoveDiscountImplCopyWith<$Res> {
  __$$RemoveDiscountImplCopyWithImpl(
      _$RemoveDiscountImpl _value, $Res Function(_$RemoveDiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$RemoveDiscountImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$RemoveDiscountImpl
    with DiagnosticableTreeMixin
    implements _RemoveDiscount {
  const _$RemoveDiscountImpl(this.discount);

  @override
  final Discount discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeDiscount(discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeDiscount'))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      __$$RemoveDiscountImplCopyWithImpl<_$RemoveDiscountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return removeDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return removeDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return removeDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return removeDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(this);
    }
    return orElse();
  }
}

abstract class _RemoveDiscount implements CheckoutEvent {
  const factory _RemoveDiscount(final Discount discount) = _$RemoveDiscountImpl;

  Discount get discount;
  @JsonKey(ignore: true)
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaxImplCopyWith<$Res> {
  factory _$$AddTaxImplCopyWith(
          _$AddTaxImpl value, $Res Function(_$AddTaxImpl) then) =
      __$$AddTaxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tax});
}

/// @nodoc
class __$$AddTaxImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddTaxImpl>
    implements _$$AddTaxImplCopyWith<$Res> {
  __$$AddTaxImplCopyWithImpl(
      _$AddTaxImpl _value, $Res Function(_$AddTaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tax = null,
  }) {
    return _then(_$AddTaxImpl(
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddTaxImpl with DiagnosticableTreeMixin implements _AddTax {
  const _$AddTaxImpl(this.tax);

  @override
  final int tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addTax(tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addTax'))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaxImpl &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaxImplCopyWith<_$AddTaxImpl> get copyWith =>
      __$$AddTaxImplCopyWithImpl<_$AddTaxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return addTax(tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return addTax?.call(tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addTax != null) {
      return addTax(tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return addTax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return addTax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addTax != null) {
      return addTax(this);
    }
    return orElse();
  }
}

abstract class _AddTax implements CheckoutEvent {
  const factory _AddTax(final int tax) = _$AddTaxImpl;

  int get tax;
  @JsonKey(ignore: true)
  _$$AddTaxImplCopyWith<_$AddTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaxImplCopyWith<$Res> {
  factory _$$RemoveTaxImplCopyWith(
          _$RemoveTaxImpl value, $Res Function(_$RemoveTaxImpl) then) =
      __$$RemoveTaxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tax});
}

/// @nodoc
class __$$RemoveTaxImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveTaxImpl>
    implements _$$RemoveTaxImplCopyWith<$Res> {
  __$$RemoveTaxImplCopyWithImpl(
      _$RemoveTaxImpl _value, $Res Function(_$RemoveTaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tax = null,
  }) {
    return _then(_$RemoveTaxImpl(
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveTaxImpl with DiagnosticableTreeMixin implements _RemoveTax {
  const _$RemoveTaxImpl(this.tax);

  @override
  final int tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeTax(tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeTax'))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaxImpl &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaxImplCopyWith<_$RemoveTaxImpl> get copyWith =>
      __$$RemoveTaxImplCopyWithImpl<_$RemoveTaxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return removeTax(tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return removeTax?.call(tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeTax != null) {
      return removeTax(tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return removeTax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return removeTax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeTax != null) {
      return removeTax(this);
    }
    return orElse();
  }
}

abstract class _RemoveTax implements CheckoutEvent {
  const factory _RemoveTax(final int tax) = _$RemoveTaxImpl;

  int get tax;
  @JsonKey(ignore: true)
  _$$RemoveTaxImplCopyWith<_$RemoveTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddServiceChargeImplCopyWith<$Res> {
  factory _$$AddServiceChargeImplCopyWith(_$AddServiceChargeImpl value,
          $Res Function(_$AddServiceChargeImpl) then) =
      __$$AddServiceChargeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int serviceCharge});
}

/// @nodoc
class __$$AddServiceChargeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddServiceChargeImpl>
    implements _$$AddServiceChargeImplCopyWith<$Res> {
  __$$AddServiceChargeImplCopyWithImpl(_$AddServiceChargeImpl _value,
      $Res Function(_$AddServiceChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceCharge = null,
  }) {
    return _then(_$AddServiceChargeImpl(
      null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddServiceChargeImpl
    with DiagnosticableTreeMixin
    implements _AddServiceCharge {
  const _$AddServiceChargeImpl(this.serviceCharge);

  @override
  final int serviceCharge;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addServiceCharge(serviceCharge: $serviceCharge)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addServiceCharge'))
      ..add(DiagnosticsProperty('serviceCharge', serviceCharge));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceChargeImpl &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceChargeImplCopyWith<_$AddServiceChargeImpl> get copyWith =>
      __$$AddServiceChargeImplCopyWithImpl<_$AddServiceChargeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return addServiceCharge(serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return addServiceCharge?.call(serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addServiceCharge != null) {
      return addServiceCharge(serviceCharge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return addServiceCharge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return addServiceCharge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (addServiceCharge != null) {
      return addServiceCharge(this);
    }
    return orElse();
  }
}

abstract class _AddServiceCharge implements CheckoutEvent {
  const factory _AddServiceCharge(final int serviceCharge) =
      _$AddServiceChargeImpl;

  int get serviceCharge;
  @JsonKey(ignore: true)
  _$$AddServiceChargeImplCopyWith<_$AddServiceChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveServiceChargeImplCopyWith<$Res> {
  factory _$$RemoveServiceChargeImplCopyWith(_$RemoveServiceChargeImpl value,
          $Res Function(_$RemoveServiceChargeImpl) then) =
      __$$RemoveServiceChargeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int serviceCharge});
}

/// @nodoc
class __$$RemoveServiceChargeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveServiceChargeImpl>
    implements _$$RemoveServiceChargeImplCopyWith<$Res> {
  __$$RemoveServiceChargeImplCopyWithImpl(_$RemoveServiceChargeImpl _value,
      $Res Function(_$RemoveServiceChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceCharge = null,
  }) {
    return _then(_$RemoveServiceChargeImpl(
      null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveServiceChargeImpl
    with DiagnosticableTreeMixin
    implements _RemoveServiceCharge {
  const _$RemoveServiceChargeImpl(this.serviceCharge);

  @override
  final int serviceCharge;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeServiceCharge(serviceCharge: $serviceCharge)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeServiceCharge'))
      ..add(DiagnosticsProperty('serviceCharge', serviceCharge));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveServiceChargeImpl &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveServiceChargeImplCopyWith<_$RemoveServiceChargeImpl> get copyWith =>
      __$$RemoveServiceChargeImplCopyWithImpl<_$RemoveServiceChargeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addItem,
    required TResult Function(Product product) removeItem,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function(Discount discount) removeDiscount,
    required TResult Function(int tax) addTax,
    required TResult Function(int tax) removeTax,
    required TResult Function(int serviceCharge) addServiceCharge,
    required TResult Function(int serviceCharge) removeServiceCharge,
  }) {
    return removeServiceCharge(serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addItem,
    TResult? Function(Product product)? removeItem,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function(Discount discount)? removeDiscount,
    TResult? Function(int tax)? addTax,
    TResult? Function(int tax)? removeTax,
    TResult? Function(int serviceCharge)? addServiceCharge,
    TResult? Function(int serviceCharge)? removeServiceCharge,
  }) {
    return removeServiceCharge?.call(serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addItem,
    TResult Function(Product product)? removeItem,
    TResult Function(Discount discount)? addDiscount,
    TResult Function(Discount discount)? removeDiscount,
    TResult Function(int tax)? addTax,
    TResult Function(int tax)? removeTax,
    TResult Function(int serviceCharge)? addServiceCharge,
    TResult Function(int serviceCharge)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeServiceCharge != null) {
      return removeServiceCharge(serviceCharge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_AddTax value) addTax,
    required TResult Function(_RemoveTax value) removeTax,
    required TResult Function(_AddServiceCharge value) addServiceCharge,
    required TResult Function(_RemoveServiceCharge value) removeServiceCharge,
  }) {
    return removeServiceCharge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_AddTax value)? addTax,
    TResult? Function(_RemoveTax value)? removeTax,
    TResult? Function(_AddServiceCharge value)? addServiceCharge,
    TResult? Function(_RemoveServiceCharge value)? removeServiceCharge,
  }) {
    return removeServiceCharge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_AddTax value)? addTax,
    TResult Function(_RemoveTax value)? removeTax,
    TResult Function(_AddServiceCharge value)? addServiceCharge,
    TResult Function(_RemoveServiceCharge value)? removeServiceCharge,
    required TResult orElse(),
  }) {
    if (removeServiceCharge != null) {
      return removeServiceCharge(this);
    }
    return orElse();
  }
}

abstract class _RemoveServiceCharge implements CheckoutEvent {
  const factory _RemoveServiceCharge(final int serviceCharge) =
      _$RemoveServiceChargeImpl;

  int get serviceCharge;
  @JsonKey(ignore: true)
  _$$RemoveServiceChargeImplCopyWith<_$RemoveServiceChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> items, Discount? discount,
            int tax, int serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> items, Discount? discount,
            int tax, int serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> items, Discount? discount,
            int tax, int serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductQuantity> items,
      Discount? discount,
      int tax,
      int serviceCharge});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? discount = freezed,
    Object? tax = null,
    Object? serviceCharge = null,
  }) {
    return _then(_$LoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductQuantity>,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(final List<ProductQuantity> items, this.discount, this.tax,
      this.serviceCharge)
      : _items = items;

  final List<ProductQuantity> _items;
  @override
  List<ProductQuantity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Discount? discount;
  @override
  final int tax;
  @override
  final int serviceCharge;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.loaded(items: $items, discount: $discount, tax: $tax, serviceCharge: $serviceCharge)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.loaded'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('tax', tax))
      ..add(DiagnosticsProperty('serviceCharge', serviceCharge));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      discount,
      tax,
      serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> items, Discount? discount,
            int tax, int serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(items, discount, tax, serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(items, discount, tax, serviceCharge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, discount, tax, serviceCharge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CheckoutState {
  const factory _Loaded(
      final List<ProductQuantity> items,
      final Discount? discount,
      final int tax,
      final int serviceCharge) = _$LoadedImpl;

  List<ProductQuantity> get items;
  Discount? get discount;
  int get tax;
  int get serviceCharge;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> items, Discount? discount,
            int tax, int serviceCharge)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> items, Discount? discount, int tax,
            int serviceCharge)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
