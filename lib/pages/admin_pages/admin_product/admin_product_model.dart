import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'admin_product_widget.dart' show AdminProductWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminProductModel extends FlutterFlowModel<AdminProductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for addProductName widget.
  FocusNode? addProductNameFocusNode;
  TextEditingController? addProductNameTextController;
  String? Function(BuildContext, String?)?
      addProductNameTextControllerValidator;
  // State field(s) for categoryProductDropDown widget.
  String? categoryProductDropDownValue;
  FormFieldController<String>? categoryProductDropDownValueController;
  Stream<List<CategoriesRow>>? categoryProductDropDownSupabaseStream;
  // State field(s) for stockLevelDropDown widget.
  String? stockLevelDropDownValue;
  FormFieldController<String>? stockLevelDropDownValueController;
  Stream<List<CategoriesRow>>? stockLevelDropDownSupabaseStream;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode;
  TextEditingController? skuTextController;
  String? Function(BuildContext, String?)? skuTextControllerValidator;
  // State field(s) for cataloguePrice widget.
  FocusNode? cataloguePriceFocusNode;
  TextEditingController? cataloguePriceTextController;
  String? Function(BuildContext, String?)?
      cataloguePriceTextControllerValidator;
  // State field(s) for corporatePrice widget.
  FocusNode? corporatePriceFocusNode;
  TextEditingController? corporatePriceTextController;
  String? Function(BuildContext, String?)?
      corporatePriceTextControllerValidator;
  // State field(s) for weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for addCategoryName widget.
  FocusNode? addCategoryNameFocusNode;
  TextEditingController? addCategoryNameTextController;
  String? Function(BuildContext, String?)?
      addCategoryNameTextControllerValidator;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  Stream<List<CategoriesRow>>? categoryDropDownSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    addProductNameFocusNode?.dispose();
    addProductNameTextController?.dispose();

    skuFocusNode?.dispose();
    skuTextController?.dispose();

    cataloguePriceFocusNode?.dispose();
    cataloguePriceTextController?.dispose();

    corporatePriceFocusNode?.dispose();
    corporatePriceTextController?.dispose();

    weightFocusNode?.dispose();
    weightTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();

    addCategoryNameFocusNode?.dispose();
    addCategoryNameTextController?.dispose();
  }
}
