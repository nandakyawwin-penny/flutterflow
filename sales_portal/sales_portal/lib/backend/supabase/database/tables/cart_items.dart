import '../database.dart';

class CartItemsTable extends SupabaseTable<CartItemsRow> {
  @override
  String get tableName => 'cart_items';

  @override
  CartItemsRow createRow(Map<String, dynamic> data) => CartItemsRow(data);
}

class CartItemsRow extends SupabaseDataRow {
  CartItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartItemsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);
}
