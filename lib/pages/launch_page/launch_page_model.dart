import '/flutter_flow/flutter_flow_util.dart';
import 'launch_page_widget.dart' show LaunchPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchPageModel extends FlutterFlowModel<LaunchPageWidget> {
  ///  Local state fields for this page.

  String? userName;

  String? birthDay;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
