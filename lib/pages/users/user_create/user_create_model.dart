import '/flutter_flow/flutter_flow_util.dart';
import 'user_create_widget.dart' show UserCreateWidget;
import 'package:flutter/material.dart';

class UserCreateModel extends FlutterFlowModel<UserCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
