import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/custom_nav/custom_nav_widget.dart';
import '/pages/components/header_bar/header_bar_widget.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  Local state fields for this page.

  bool openNotes = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for HeaderBar component.
  late HeaderBarModel headerBarModel;
  // Model for CustomNav component.
  late CustomNavModel customNavModel;

  @override
  void initState(BuildContext context) {
    headerBarModel = createModel(context, () => HeaderBarModel());
    customNavModel = createModel(context, () => CustomNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController.dispose();
    headerBarModel.dispose();
    customNavModel.dispose();
  }
}
