import '../database.dart';

class CompaniesTable extends SupabaseTable<CompaniesRow> {
  @override
  String get tableName => 'companies';

  @override
  CompaniesRow createRow(Map<String, dynamic> data) => CompaniesRow(data);
}

class CompaniesRow extends SupabaseDataRow {
  CompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompaniesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get companyCode => getField<String>('company_code')!;
  set companyCode(String value) => setField<String>('company_code', value);

  String get companyName => getField<String>('company_name')!;
  set companyName(String value) => setField<String>('company_name', value);

  double? get minimumCreditLine => getField<double>('minimum_credit_line');
  set minimumCreditLine(double? value) =>
      setField<double>('minimum_credit_line', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  double? get corpDiscount => getField<double>('corp_discount');
  set corpDiscount(double? value) => setField<double>('corp_discount', value);
}
