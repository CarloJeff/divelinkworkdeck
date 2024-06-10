import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/custom_nav/custom_nav_widget.dart';
import '/pages/components/header_bar/header_bar_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for CustomNav component.
  late CustomNavModel customNavModel;
  // Model for HeaderBar component.
  late HeaderBarModel headerBarModel;

  @override
  void initState(BuildContext context) {
    customNavModel = createModel(context, () => CustomNavModel());
    headerBarModel = createModel(context, () => HeaderBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavModel.dispose();
    headerBarModel.dispose();
  }
}
