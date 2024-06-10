import '/flutter_flow/flutter_flow_util.dart';
import 'company_edit_widget.dart' show CompanyEditWidget;
import 'package:flutter/material.dart';

class CompanyEditModel extends FlutterFlowModel<CompanyEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
