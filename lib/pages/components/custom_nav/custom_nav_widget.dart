import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_nav_model.dart';
export 'custom_nav_model.dart';

class CustomNavWidget extends StatefulWidget {
  const CustomNavWidget({
    super.key,
    required this.selectedNav,
  });

  final int? selectedNav;

  @override
  State<CustomNavWidget> createState() => _CustomNavWidgetState();
}

class _CustomNavWidgetState extends State<CustomNavWidget> {
  late CustomNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered1 = true);
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered1 = false);
            }),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'ReadyOrders',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Icon(
                FFIcons.kdownBold,
                color: widget.selectedNav == 1
                    ? const Color(0xFFF5A506)
                    : FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered2 = true);
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered2 = false);
            }),
            child: Icon(
              FFIcons.kupBold,
              color: widget.selectedNav == 2
                  ? const Color(0xFFF5A506)
                  : FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered3 = true);
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered3 = false);
            }),
            child: FaIcon(
              FontAwesomeIcons.walking,
              color: _model.mouseRegionHovered3
                  ? const Color(0xFFF5A506)
                  : FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered4 = true);
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered4 = false);
            }),
            child: Icon(
              Icons.change_circle_outlined,
              color: _model.mouseRegionHovered4
                  ? const Color(0xFFF5A506)
                  : FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
