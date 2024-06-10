import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'reject_icon_model.dart';
export 'reject_icon_model.dart';

class RejectIconWidget extends StatefulWidget {
  const RejectIconWidget({
    super.key,
    bool? isTrue,
  }) : isTrue = isTrue ?? false;

  final bool isTrue;

  @override
  State<RejectIconWidget> createState() => _RejectIconWidgetState();
}

class _RejectIconWidgetState extends State<RejectIconWidget> {
  late RejectIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RejectIconModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
      child: Container(
        width: 360.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: const Color(0xE3E5E4E4),
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: const Color(0xFFF5A506),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color(0xFFF5A506),
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'REASON OF REJECTION',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: const Color(0xFFF5A506),
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue1 ??= false,
                                onChanged: ((_model.checkboxValue2 == true) ||
                                        (_model.checkboxValue3 == true))
                                    ? null
                                    : (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue1 = newValue!);
                                      },
                                side: const BorderSide(
                                  width: 2,
                                  color: Color(0xFFF5A506),
                                ),
                                activeColor: const Color(0xFFF5A506),
                                checkColor: ((_model.checkboxValue2 == true) ||
                                        (_model.checkboxValue3 == true))
                                    ? const Color(0x04000000)
                                    : null,
                              ),
                            ),
                          ),
                          Text(
                            'ONE OR MORE ITEMS NOT AVAILABLE',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: const Color(0xFFF5A506),
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue2 ??= false,
                                onChanged: ((_model.checkboxValue1 == true) ||
                                        (_model.checkboxValue3 == true))
                                    ? null
                                    : (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue2 = newValue!);
                                      },
                                side: const BorderSide(
                                  width: 2,
                                  color: Color(0xFFF5A506),
                                ),
                                activeColor: const Color(0xFFF5A506),
                                checkColor: ((_model.checkboxValue1 == true) ||
                                        (_model.checkboxValue3 == true))
                                    ? Colors.transparent
                                    : null,
                              ),
                            ),
                          ),
                          Text(
                            'KITCHEN IS CLOSED',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: const Color(0xFFF5A506),
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue3 ??= false,
                                onChanged: ((_model.checkboxValue2 == true) ||
                                        (_model.checkboxValue1 == true))
                                    ? null
                                    : (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue3 = newValue!);
                                      },
                                side: const BorderSide(
                                  width: 2,
                                  color: Color(0xFFF5A506),
                                ),
                                activeColor: const Color(0xFFF5A506),
                                checkColor: ((_model.checkboxValue2 == true) ||
                                        (_model.checkboxValue1 == true))
                                    ? const Color(0x01000000)
                                    : null,
                              ),
                            ),
                          ),
                          Text(
                            'OTHERS',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 15.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: const Color(0xFFF5A506),
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF15BC24),
                            width: 3.0,
                          ),
                        ),
                        child: Visibility(
                          visible: _model.checkboxValue3 == true,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              textCapitalization: TextCapitalization.none,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: 4,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: ((_model.checkboxValue1 == false) &&
                            (_model.checkboxValue2 == false) &&
                            (_model.checkboxValue3 == false))
                        ? null
                        : () async {
                            context.safePop();
                          },
                    text: 'Send Rejection',
                    options: FFButtonOptions(
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFE1121D),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 3.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      disabledColor: FlutterFlowTheme.of(context).secondaryText,
                      disabledTextColor: FlutterFlowTheme.of(context).alternate,
                    ),
                    showLoadingIndicator: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
