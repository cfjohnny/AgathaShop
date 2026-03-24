import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuarioId" field.
  DocumentReference? _usuarioId;
  DocumentReference? get usuarioId => _usuarioId;
  bool hasUsuarioId() => _usuarioId != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "comision" field.
  double? _comision;
  double get comision => _comision ?? 0.0;
  bool hasComision() => _comision != null;

  // "precioBase" field.
  double? _precioBase;
  double get precioBase => _precioBase ?? 0.0;
  bool hasPrecioBase() => _precioBase != null;

  // "tipoCambio" field.
  double? _tipoCambio;
  double get tipoCambio => _tipoCambio ?? 0.0;
  bool hasTipoCambio() => _tipoCambio != null;

  // "precioFinal" field.
  double? _precioFinal;
  double get precioFinal => _precioFinal ?? 0.0;
  bool hasPrecioFinal() => _precioFinal != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "fechaActualizacion" field.
  DateTime? _fechaActualizacion;
  DateTime? get fechaActualizacion => _fechaActualizacion;
  bool hasFechaActualizacion() => _fechaActualizacion != null;

  // "envio" field.
  bool? _envio;
  bool get envio => _envio ?? false;
  bool hasEnvio() => _envio != null;

  // "plataforma" field.
  String? _plataforma;
  String get plataforma => _plataforma ?? '';
  bool hasPlataforma() => _plataforma != null;

  // "pagado" field.
  bool? _pagado;
  bool get pagado => _pagado ?? false;
  bool hasPagado() => _pagado != null;

  // "montoPendiente" field.
  double? _montoPendiente;
  double get montoPendiente => _montoPendiente ?? 0.0;
  bool hasMontoPendiente() => _montoPendiente != null;

  // "linkProducto" field.
  String? _linkProducto;
  String get linkProducto => _linkProducto ?? '';
  bool hasLinkProducto() => _linkProducto != null;

  void _initializeFields() {
    _usuarioId = snapshotData['usuarioId'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _estado = snapshotData['estado'] as String?;
    _comision = castToType<double>(snapshotData['comision']);
    _precioBase = castToType<double>(snapshotData['precioBase']);
    _tipoCambio = castToType<double>(snapshotData['tipoCambio']);
    _precioFinal = castToType<double>(snapshotData['precioFinal']);
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaActualizacion = snapshotData['fechaActualizacion'] as DateTime?;
    _envio = snapshotData['envio'] as bool?;
    _plataforma = snapshotData['plataforma'] as String?;
    _pagado = snapshotData['pagado'] as bool?;
    _montoPendiente = castToType<double>(snapshotData['montoPendiente']);
    _linkProducto = snapshotData['linkProducto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  DocumentReference? usuarioId,
  int? cantidad,
  String? estado,
  double? comision,
  double? precioBase,
  double? tipoCambio,
  double? precioFinal,
  DateTime? fechaCreacion,
  DateTime? fechaActualizacion,
  bool? envio,
  String? plataforma,
  bool? pagado,
  double? montoPendiente,
  String? linkProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuarioId': usuarioId,
      'cantidad': cantidad,
      'estado': estado,
      'comision': comision,
      'precioBase': precioBase,
      'tipoCambio': tipoCambio,
      'precioFinal': precioFinal,
      'fechaCreacion': fechaCreacion,
      'fechaActualizacion': fechaActualizacion,
      'envio': envio,
      'plataforma': plataforma,
      'pagado': pagado,
      'montoPendiente': montoPendiente,
      'linkProducto': linkProducto,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.usuarioId == e2?.usuarioId &&
        e1?.cantidad == e2?.cantidad &&
        e1?.estado == e2?.estado &&
        e1?.comision == e2?.comision &&
        e1?.precioBase == e2?.precioBase &&
        e1?.tipoCambio == e2?.tipoCambio &&
        e1?.precioFinal == e2?.precioFinal &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaActualizacion == e2?.fechaActualizacion &&
        e1?.envio == e2?.envio &&
        e1?.plataforma == e2?.plataforma &&
        e1?.pagado == e2?.pagado &&
        e1?.montoPendiente == e2?.montoPendiente &&
        e1?.linkProducto == e2?.linkProducto;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.usuarioId,
        e?.cantidad,
        e?.estado,
        e?.comision,
        e?.precioBase,
        e?.tipoCambio,
        e?.precioFinal,
        e?.fechaCreacion,
        e?.fechaActualizacion,
        e?.envio,
        e?.plataforma,
        e?.pagado,
        e?.montoPendiente,
        e?.linkProducto
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
