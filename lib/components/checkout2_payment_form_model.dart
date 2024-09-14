import '/flutter_flow/flutter_flow_util.dart';
import 'checkout2_payment_form_widget.dart' show Checkout2PaymentFormWidget;
import 'package:flutter/material.dart';

class Checkout2PaymentFormModel
    extends FlutterFlowModel<Checkout2PaymentFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
