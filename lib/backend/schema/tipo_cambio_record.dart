import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoCambioRecord extends FirestoreRecord {
  TipoCambioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "moneda" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  bool hasMoneda() => _moneda != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  void _initializeFields() {
    _moneda = snapshotData['moneda'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipoCambio');

  static Stream<TipoCambioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoCambioRecord.fromSnapshot(s));

  static Future<TipoCambioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoCambioRecord.fromSnapshot(s));

  static TipoCambioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoCambioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoCambioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoCambioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoCambioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoCambioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoCambioRecordData({
  String? moneda,
  double? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'moneda': moneda,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoCambioRecordDocumentEquality implements Equality<TipoCambioRecord> {
  const TipoCambioRecordDocumentEquality();

  @override
  bool equals(TipoCambioRecord? e1, TipoCambioRecord? e2) {
    return e1?.moneda == e2?.moneda && e1?.monto == e2?.monto;
  }

  @override
  int hash(TipoCambioRecord? e) =>
      const ListEquality().hash([e?.moneda, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is TipoCambioRecord;
}
