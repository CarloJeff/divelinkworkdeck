import '/flutter_flow/flutter_flow_util.dart';
import 'company_create_widget.dart' show CompanyCreateWidget;
import 'package:flutter/material.dart';

class CompanyCreateModel extends FlutterFlowModel<CompanyCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
