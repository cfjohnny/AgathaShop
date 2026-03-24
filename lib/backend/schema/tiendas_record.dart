import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiendasRecord extends FirestoreRecord {
  TiendasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreTienda" field.
  String? _nombreTienda;
  String get nombreTienda => _nombreTienda ?? '';
  bool hasNombreTienda() => _nombreTienda != null;

  // "montoComision" field.
  double? _montoComision;
  double get montoComision => _montoComision ?? 0.0;
  bool hasMontoComision() => _montoComision != null;

  void _initializeFields() {
    _nombreTienda = snapshotData['nombreTienda'] as String?;
    _montoComision = castToType<double>(snapshotData['montoComision']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tiendas');

  static Stream<TiendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiendasRecord.fromSnapshot(s));

  static Future<TiendasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiendasRecord.fromSnapshot(s));

  static TiendasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TiendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiendasRecordData({
  String? nombreTienda,
  double? montoComision,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreTienda': nombreTienda,
      'montoComision': montoComision,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiendasRecordDocumentEquality implements Equality<TiendasRecord> {
  const TiendasRecordDocumentEquality();

  @override
  bool equals(TiendasRecord? e1, TiendasRecord? e2) {
    return e1?.nombreTienda == e2?.nombreTienda &&
        e1?.montoComision == e2?.montoComision;
  }

  @override
  int hash(TiendasRecord? e) =>
      const ListEquality().hash([e?.nombreTienda, e?.montoComision]);

  @override
  bool isValidKey(Object? o) => o is TiendasRecord;
}
