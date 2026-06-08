import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'admin_company_widget.dart' show AdminCompanyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminCompanyModel extends FlutterFlowModel<AdminCompanyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for companyNameSignup widget.
  FocusNode? companyNameSignupFocusNode;
  TextEditingController? companyNameSignupTextController;
  String? Function(BuildContext, String?)?
      companyNameSignupTextControllerValidator;
  // State field(s) for companyCodeSignup widget.
  FocusNode? companyCodeSignupFocusNode;
  TextEditingController? companyCodeSignupTextController;
  String? Function(BuildContext, String?)?
      companyCodeSignupTextControllerValidator;
  // State field(s) for phoneSignup widget.
  FocusNode? phoneSignupFocusNode;
  TextEditingController? phoneSignupTextController;
  String? Function(BuildContext, String?)? phoneSignupTextControllerValidator;
  // State field(s) for minCreditLineSignup widget.
  FocusNode? minCreditLineSignupFocusNode;
  TextEditingController? minCreditLineSignupTextController;
  String? Function(BuildContext, String?)?
      minCreditLineSignupTextControllerValidator;
  // State field(s) for corpDiscountSignup widget.
  FocusNode? corpDiscountSignupFocusNode;
  TextEditingController? corpDiscountSignupTextController;
  String? Function(BuildContext, String?)?
      corpDiscountSignupTextControllerValidator;
  // State field(s) for addressSignup widget.
  FocusNode? addressSignupFocusNode;
  TextEditingController? addressSignupTextController;
  String? Function(BuildContext, String?)? addressSignupTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    companyNameSignupFocusNode?.dispose();
    companyNameSignupTextController?.dispose();

    companyCodeSignupFocusNode?.dispose();
    companyCodeSignupTextController?.dispose();

    phoneSignupFocusNode?.dispose();
    phoneSignupTextController?.dispose();

    minCreditLineSignupFocusNode?.dispose();
    minCreditLineSignupTextController?.dispose();

    corpDiscountSignupFocusNode?.dispose();
    corpDiscountSignupTextController?.dispose();

    addressSignupFocusNode?.dispose();
    addressSignupTextController?.dispose();
  }
}
