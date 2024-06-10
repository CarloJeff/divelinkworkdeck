import '/flutter_flow/flutter_flow_util.dart';
import 'user_edit_widget.dart' show UserEditWidget;
import 'package:flutter/material.dart';

class UserEditModel extends FlutterFlowModel<UserEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
