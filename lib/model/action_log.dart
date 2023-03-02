import 'package:conduit/conduit.dart';
import 'package:dart_application/model/finance.dart';

class ActionLog extends ManagedObject<_ActionLog> implements _ActionLog {
  Map<String, dynamic> toJson() => asMap();
}

class _ActionLog {
  @primaryKey
  int? id;
  @Column()
  String? action;
  @Column(defaultValue: 'now()')
  DateTime? dateAction;
  @Relate(#journalList, isRequired: true, onDelete: DeleteRule.cascade)
  Finance? finance;
}
