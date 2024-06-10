import '/flutter_flow/flutter_flow_util.dart';
import 'role_detail_widget.dart' show RoleDetailWidget;
import 'package:flutter/material.dart';

class RoleDetailModel extends FlutterFlowModel<RoleDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
