import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderDetailsRecord extends FirestoreRecord {
  OrderDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderRef" field.
  DocumentReference? _orderRef;
  DocumentReference? get orderRef => _orderRef;
  bool hasOrderRef() => _orderRef != null;

  // "orderName" field.
  String? _orderName;
  String get orderName => _orderName ?? '';
  bool hasOrderName() => _orderName != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  // "selectedOrder" field.
  String? _selectedOrder;
  String get selectedOrder => _selectedOrder ?? '';
  bool hasSelectedOrder() => _selectedOrder != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "orderID" field.
  String? _orderID;
  String get orderID => _orderID ?? '';
  bool hasOrderID() => _orderID != null;

  // "relativeTime" field.
  DateTime? _relativeTime;
  DateTime? get relativeTime => _relativeTime;
  bool hasRelativeTime() => _relativeTime != null;

  // "orderToBe" field.
  String? _orderToBe;
  String get orderToBe => _orderToBe ?? '';
  bool hasOrderToBe() => _orderToBe != null;

  // "partialOrder" field.
  String? _partialOrder;
  String get partialOrder => _partialOrder ?? '';
  bool hasPartialOrder() => _partialOrder != null;

  // "guestName" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _orderRef = snapshotData['orderRef'] as DocumentReference?;
    _orderName = snapshotData['orderName'] as String?;
    _orderNumber = castToType<int>(snapshotData['orderNumber']);
    _selectedOrder = snapshotData['selectedOrder'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _orderID = snapshotData['orderID'] as String?;
    _relativeTime = snapshotData['relativeTime'] as DateTime?;
    _orderToBe = snapshotData['orderToBe'] as String?;
    _partialOrder = snapshotData['partialOrder'] as String?;
    _guestName = snapshotData['guestName'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderDetails');

  static Stream<OrderDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderDetailsRecord.fromSnapshot(s));

  static Future<OrderDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderDetailsRecord.fromSnapshot(s));

  static OrderDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderDetailsRecordData({
  DocumentReference? orderRef,
  String? orderName,
  int? orderNumber,
  String? selectedOrder,
  DocumentReference? users,
  String? orderID,
  DateTime? relativeTime,
  String? orderToBe,
  String? partialOrder,
  String? guestName,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderRef': orderRef,
      'orderName': orderName,
      'orderNumber': orderNumber,
      'selectedOrder': selectedOrder,
      'users': users,
      'orderID': orderID,
      'relativeTime': relativeTime,
      'orderToBe': orderToBe,
      'partialOrder': partialOrder,
      'guestName': guestName,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderDetailsRecordDocumentEquality
    implements Equality<OrderDetailsRecord> {
  const OrderDetailsRecordDocumentEquality();

  @override
  bool equals(OrderDetailsRecord? e1, OrderDetailsRecord? e2) {
    return e1?.orderRef == e2?.orderRef &&
        e1?.orderName == e2?.orderName &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.selectedOrder == e2?.selectedOrder &&
        e1?.users == e2?.users &&
        e1?.orderID == e2?.orderID &&
        e1?.relativeTime == e2?.relativeTime &&
        e1?.orderToBe == e2?.orderToBe &&
        e1?.partialOrder == e2?.partialOrder &&
        e1?.guestName == e2?.guestName &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OrderDetailsRecord? e) => const ListEquality().hash([
        e?.orderRef,
        e?.orderName,
        e?.orderNumber,
        e?.selectedOrder,
        e?.users,
        e?.orderID,
        e?.relativeTime,
        e?.orderToBe,
        e?.partialOrder,
        e?.guestName,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderDetailsRecord;
}
