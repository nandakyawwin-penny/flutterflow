import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  double? get creditLine => getField<double>('credit_line');
  set creditLine(double? value) => setField<double>('credit_line', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get position => getField<String>('position')!;
  set position(String value) => setField<String>('position', value);

  String? get companyCode => getField<String>('company_code');
  set companyCode(String? value) => setField<String>('company_code', value);

  String? get adress => getField<String>('adress');
  set adress(String? value) => setField<String>('adress', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
