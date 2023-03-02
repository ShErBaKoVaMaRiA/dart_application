import 'package:conduit/conduit.dart';
import 'package:dart_application/model/category.dart';
import 'package:dart_application/model/action_log.dart';
import 'package:dart_application/model/user.dart';

class Finance extends ManagedObject<_Finance> implements _Finance {
  Map<String, dynamic> toJson() => asMap();
}

class _Finance {
  @primaryKey
  int? id;
  @Column()
  String? nameFin;
  @Column()
  String? descriptionFin;
  @Column(defaultValue: 'now()')
  DateTime? dateFin;
  @Column()
  int? summFin;
  @Column(nullable: true, defaultValue: '0')
  int? logicalDelete;
  @Relate(#financesList, isRequired: true, onDelete: DeleteRule.cascade)
  Category? category;
  @Relate(#financesList, isRequired: true, onDelete: DeleteRule.cascade)
  User? user;

  ManagedSet<ActionLog>? actionList;
}
