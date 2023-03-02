import 'package:conduit/conduit.dart';
import 'package:dart_application/model/finance.dart';

class Category extends ManagedObject<_Category> implements _Category {
  Map<String, dynamic> toJson() => asMap();
}

class _Category {
  @primaryKey
  int? id;
  @Column(unique: true, indexed: true)
  String? nameCategory;
  ManagedSet<Finance>? financesList;
}
