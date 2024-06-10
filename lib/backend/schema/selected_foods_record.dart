import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedFoodsRecord extends FirestoreRecord {
  SelectedFoodsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "foods" field.
  String? _foods;
  String get foods => _foods ?? '';
  bool hasFoods() => _foods != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "selected" field.
  bool? _selected;
  bool get selected => _selected ?? false;
  bool hasSelected() => _selected != null;

  void _initializeFields() {
    _foods = snapshotData['foods'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _selected = snapshotData['selected'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedFoods');

  static Stream<SelectedFoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedFoodsRecord.fromSnapshot(s));

  static Future<SelectedFoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedFoodsRecord.fromSnapshot(s));

  static SelectedFoodsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedFoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedFoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedFoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedFoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedFoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedFoodsRecordData({
  String? foods,
  int? quantity,
  bool? selected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foods': foods,
      'quantity': quantity,
      'selected': selected,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedFoodsRecordDocumentEquality
    implements Equality<SelectedFoodsRecord> {
  const SelectedFoodsRecordDocumentEquality();

  @override
  bool equals(SelectedFoodsRecord? e1, SelectedFoodsRecord? e2) {
    return e1?.foods == e2?.foods &&
        e1?.quantity == e2?.quantity &&
        e1?.selected == e2?.selected;
  }

  @override
  int hash(SelectedFoodsRecord? e) =>
      const ListEquality().hash([e?.foods, e?.quantity, e?.selected]);

  @override
  bool isValidKey(Object? o) => o is SelectedFoodsRecord;
}
