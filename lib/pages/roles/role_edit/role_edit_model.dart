import '/flutter_flow/flutter_flow_util.dart';
import 'role_edit_widget.dart' show RoleEditWidget;
import 'package:flutter/material.dart';

class RoleEditModel extends FlutterFlowModel<RoleEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
