import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemsRecord extends FirestoreRecord {
  OrderItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderItemId" field.
  String? _orderItemId;
  String get orderItemId => _orderItemId ?? '';
  bool hasOrderItemId() => _orderItemId != null;

  // "orderName" field.
  String? _orderName;
  String get orderName => _orderName ?? '';
  bool hasOrderName() => _orderName != null;

  // "orderStatus" field.
  bool? _orderStatus;
  bool get orderStatus => _orderStatus ?? false;
  bool hasOrderStatus() => _orderStatus != null;

  // "orderQuantity" field.
  int? _orderQuantity;
  int get orderQuantity => _orderQuantity ?? 0;
  bool hasOrderQuantity() => _orderQuantity != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _orderItemId = snapshotData['orderItemId'] as String?;
    _orderName = snapshotData['orderName'] as String?;
    _orderStatus = snapshotData['orderStatus'] as bool?;
    _orderQuantity = castToType<int>(snapshotData['orderQuantity']);
    _orderId = snapshotData['orderId'] as String?;
    _completed = snapshotData['completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderItems');

  static Stream<OrderItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderItemsRecord.fromSnapshot(s));

  static Future<OrderItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderItemsRecord.fromSnapshot(s));

  static OrderItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderItemsRecordData({
  String? orderItemId,
  String? orderName,
  bool? orderStatus,
  int? orderQuantity,
  String? orderId,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderItemId': orderItemId,
      'orderName': orderName,
      'orderStatus': orderStatus,
      'orderQuantity': orderQuantity,
      'orderId': orderId,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderItemsRecordDocumentEquality implements Equality<OrderItemsRecord> {
  const OrderItemsRecordDocumentEquality();

  @override
  bool equals(OrderItemsRecord? e1, OrderItemsRecord? e2) {
    return e1?.orderItemId == e2?.orderItemId &&
        e1?.orderName == e2?.orderName &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.orderQuantity == e2?.orderQuantity &&
        e1?.orderId == e2?.orderId &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(OrderItemsRecord? e) => const ListEquality().hash([
        e?.orderItemId,
        e?.orderName,
        e?.orderStatus,
        e?.orderQuantity,
        e?.orderId,
        e?.completed
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderItemsRecord;
}
