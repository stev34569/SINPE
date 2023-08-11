import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for numeroDestino widget.
  TextEditingController? numeroDestinoController;
  String? Function(BuildContext, String?)? numeroDestinoControllerValidator;
  String? _numeroDestinoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for monto widget.
  TextEditingController? montoController;
  String? Function(BuildContext, String?)? montoControllerValidator;
  String? _montoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requiere monto';
    }

    return null;
  }

  // State field(s) for descripcion widget.
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  String? _descripcionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descripcion requerido';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    numeroDestinoControllerValidator = _numeroDestinoControllerValidator;
    montoControllerValidator = _montoControllerValidator;
    descripcionControllerValidator = _descripcionControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    numeroDestinoController?.dispose();
    montoController?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
