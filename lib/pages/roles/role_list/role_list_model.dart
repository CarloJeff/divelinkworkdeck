import '/flutter_flow/flutter_flow_util.dart';
import 'role_list_widget.dart' show RoleListWidget;
import 'package:flutter/material.dart';

class RoleListModel extends FlutterFlowModel<RoleListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
