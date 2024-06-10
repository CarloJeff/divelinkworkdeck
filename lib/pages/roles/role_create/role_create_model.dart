import '/flutter_flow/flutter_flow_util.dart';
import 'role_create_widget.dart' show RoleCreateWidget;
import 'package:flutter/material.dart';

class RoleCreateModel extends FlutterFlowModel<RoleCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
