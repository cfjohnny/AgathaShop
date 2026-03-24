import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pagoId" field.
  String? _pagoId;
  String get pagoId => _pagoId ?? '';
  bool hasPagoId() => _pagoId != null;

  // "pedidoId" field.
  DocumentReference? _pedidoId;
  DocumentReference? get pedidoId => _pedidoId;
  bool hasPedidoId() => _pedidoId != null;

  // "usuarioId" field.
  DocumentReference? _usuarioId;
  DocumentReference? get usuarioId => _usuarioId;
  bool hasUsuarioId() => _usuarioId != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "comprobanteUrl" field.
  String? _comprobanteUrl;
  String get comprobanteUrl => _comprobanteUrl ?? '';
  bool hasComprobanteUrl() => _comprobanteUrl != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "fechaPago" field.
  DateTime? _fechaPago;
  DateTime? get fechaPago => _fechaPago;
  bool hasFechaPago() => _fechaPago != null;

  // "metodoDePagp" field.
  String? _metodoDePagp;
  String get metodoDePagp => _metodoDePagp ?? '';
  bool hasMetodoDePagp() => _metodoDePagp != null;

  void _initializeFields() {
    _pagoId = snapshotData['pagoId'] as String?;
    _pedidoId = snapshotData['pedidoId'] as DocumentReference?;
    _usuarioId = snapshotData['usuarioId'] as DocumentReference?;
    _monto = castToType<double>(snapshotData['monto']);
    _comprobanteUrl = snapshotData['comprobanteUrl'] as String?;
    _estado = snapshotData['estado'] as String?;
    _fechaPago = snapshotData['fechaPago'] as DateTime?;
    _metodoDePagp = snapshotData['metodoDePagp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagosRecordData({
  String? pagoId,
  DocumentReference? pedidoId,
  DocumentReference? usuarioId,
  double? monto,
  String? comprobanteUrl,
  String? estado,
  DateTime? fechaPago,
  String? metodoDePagp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pagoId': pagoId,
      'pedidoId': pedidoId,
      'usuarioId': usuarioId,
      'monto': monto,
      'comprobanteUrl': comprobanteUrl,
      'estado': estado,
      'fechaPago': fechaPago,
      'metodoDePagp': metodoDePagp,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.pagoId == e2?.pagoId &&
        e1?.pedidoId == e2?.pedidoId &&
        e1?.usuarioId == e2?.usuarioId &&
        e1?.monto == e2?.monto &&
        e1?.comprobanteUrl == e2?.comprobanteUrl &&
        e1?.estado == e2?.estado &&
        e1?.fechaPago == e2?.fechaPago &&
        e1?.metodoDePagp == e2?.metodoDePagp;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash([
        e?.pagoId,
        e?.pedidoId,
        e?.usuarioId,
        e?.monto,
        e?.comprobanteUrl,
        e?.estado,
        e?.fechaPago,
        e?.metodoDePagp
      ]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
