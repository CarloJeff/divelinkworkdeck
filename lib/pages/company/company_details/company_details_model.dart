import '/flutter_flow/flutter_flow_util.dart';
import 'company_details_widget.dart' show CompanyDetailsWidget;
import 'package:flutter/material.dart';

class CompanyDetailsModel extends FlutterFlowModel<CompanyDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
