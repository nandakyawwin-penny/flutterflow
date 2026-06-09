import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'admin_user_widget.dart' show AdminUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminUserModel extends FlutterFlowModel<AdminUserWidget> {
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
  // State field(s) for firstNameSignup widget.
  FocusNode? firstNameSignupFocusNode;
  TextEditingController? firstNameSignupTextController;
  String? Function(BuildContext, String?)?
      firstNameSignupTextControllerValidator;
  // State field(s) for lastNameSignup widget.
  FocusNode? lastNameSignupFocusNode;
  TextEditingController? lastNameSignupTextController;
  String? Function(BuildContext, String?)?
      lastNameSignupTextControllerValidator;
  // State field(s) for companyCodeSignup widget.
  FocusNode? companyCodeSignupFocusNode;
  TextEditingController? companyCodeSignupTextController;
  String? Function(BuildContext, String?)?
      companyCodeSignupTextControllerValidator;
  // State field(s) for positionSignup widget.
  FocusNode? positionSignupFocusNode;
  TextEditingController? positionSignupTextController;
  String? Function(BuildContext, String?)?
      positionSignupTextControllerValidator;
  // State field(s) for creditLineSignup widget.
  FocusNode? creditLineSignupFocusNode;
  TextEditingController? creditLineSignupTextController;
  String? Function(BuildContext, String?)?
      creditLineSignupTextControllerValidator;
  // State field(s) for phoneSignup widget.
  FocusNode? phoneSignupFocusNode;
  TextEditingController? phoneSignupTextController;
  String? Function(BuildContext, String?)? phoneSignupTextControllerValidator;
  // State field(s) for emailSignup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  // State field(s) for passwordSignup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupTextController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)?
      passwordSignupTextControllerValidator;
  // State field(s) for repeatPasswordSignup widget.
  FocusNode? repeatPasswordSignupFocusNode;
  TextEditingController? repeatPasswordSignupTextController;
  late bool repeatPasswordSignupVisibility;
  String? Function(BuildContext, String?)?
      repeatPasswordSignupTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordSignupVisibility = false;
    repeatPasswordSignupVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    firstNameSignupFocusNode?.dispose();
    firstNameSignupTextController?.dispose();

    lastNameSignupFocusNode?.dispose();
    lastNameSignupTextController?.dispose();

    companyCodeSignupFocusNode?.dispose();
    companyCodeSignupTextController?.dispose();

    positionSignupFocusNode?.dispose();
    positionSignupTextController?.dispose();

    creditLineSignupFocusNode?.dispose();
    creditLineSignupTextController?.dispose();

    phoneSignupFocusNode?.dispose();
    phoneSignupTextController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupTextController?.dispose();

    repeatPasswordSignupFocusNode?.dispose();
    repeatPasswordSignupTextController?.dispose();
  }
}
