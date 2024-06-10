import '/flutter_flow/flutter_flow_util.dart';
import 'company_list_widget.dart' show CompanyListWidget;
import 'package:flutter/material.dart';

class CompanyListModel extends FlutterFlowModel<CompanyListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
