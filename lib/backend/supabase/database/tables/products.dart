import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String get sku => getField<String>('sku')!;
  set sku(String value) => setField<String>('sku', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double get catPrice => getField<double>('cat_price')!;
  set catPrice(double value) => setField<double>('cat_price', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get stockLevel => getField<String>('stock_level');
  set stockLevel(String? value) => setField<String>('stock_level', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  double? get corpPrice => getField<double>('corp_price');
  set corpPrice(double? value) => setField<double>('corp_price', value);
}
