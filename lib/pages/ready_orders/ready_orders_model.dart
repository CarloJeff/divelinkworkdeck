import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/custom_nav/custom_nav_widget.dart';
import '/pages/components/header_bar/header_bar_widget.dart';
import '/pages/components/ready_orders_components/ready_orders_components_widget.dart';
import 'ready_orders_widget.dart' show ReadyOrdersWidget;
import 'package:flutter/material.dart';

class ReadyOrdersModel extends FlutterFlowModel<ReadyOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomNav component.
  late CustomNavModel customNavModel;
  // Model for ReadyOrdersComponents component.
  late ReadyOrdersComponentsModel readyOrdersComponentsModel;
  // Model for HeaderBar component.
  late HeaderBarModel headerBarModel;

  @override
  void initState(BuildContext context) {
    customNavModel = createModel(context, () => CustomNavModel());
    readyOrdersComponentsModel =
        createModel(context, () => ReadyOrdersComponentsModel());
    headerBarModel = createModel(context, () => HeaderBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavModel.dispose();
    readyOrdersComponentsModel.dispose();
    headerBarModel.dispose();
  }
}
