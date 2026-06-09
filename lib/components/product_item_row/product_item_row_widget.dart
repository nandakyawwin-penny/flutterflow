import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_item_row_model.dart';
export 'product_item_row_model.dart';

class ProductItemRowWidget extends StatefulWidget {
  const ProductItemRowWidget({
    super.key,
    this.parameter1,
    this.productRecord,
    required this.parameter2,
    required this.parameter3,
  });

  final String? parameter1;
  final ProductFilterViewRow? productRecord;

  /// cat price
  final double? parameter2;

  /// corp price
  final double? parameter3;

  @override
  State<ProductItemRowWidget> createState() => _ProductItemRowWidgetState();
}

class _ProductItemRowWidgetState extends State<ProductItemRowWidget> {
  late ProductItemRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductItemRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 300.0,
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget!.productRecord!.imageUrl!,
                  width: 200.0,
                  height: 300.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Container(
                  width: 140.0,
                  height: 60.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.productRecord?.name,
                        'name',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.black,
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 140.0,
                height: 20.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.productRecord?.stockLevel,
                      'stock level',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: () {
                            if (widget!.parameter1 == 'in stock') {
                              return Color(0xFF59A635);
                            } else if (widget!.parameter1 == 'limited stock') {
                              return FlutterFlowTheme.of(context).tertiary;
                            } else {
                              return Color(0xFF2B24EE);
                            }
                          }(),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              if (widget!.parameter2 == widget!.parameter3)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Container(
                    width: 140.0,
                    height: 20.0,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        '${widget!.productRecord?.catPrice?.toString()} KS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).error,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              decoration: TextDecoration.lineThrough,
                            ),
                      ),
                    ),
                  ),
                ),
              Container(
                width: 140.0,
                height: 20.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    '${widget!.productRecord?.corpPrice?.toString()} Ks',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 100.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xFFF1F4F8),
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color(0xFFD8DBDE),
              ),
            ),
            child: FlutterFlowCountController(
              decrementIconBuilder: (enabled) => Icon(
                Icons.remove_rounded,
                color: enabled
                    ? FlutterFlowTheme.of(context).secondaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 24.0,
              ),
              incrementIconBuilder: (enabled) => Icon(
                Icons.add_rounded,
                color: enabled
                    ? Color(0xFF59A635)
                    : FlutterFlowTheme.of(context).alternate,
                size: 24.0,
              ),
              countBuilder: (count) => Text(
                count.toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.interTight(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
              ),
              count: _model.countControllerValue ??= 0,
              updateCount: (count) async {
                safeSetState(() => _model.countControllerValue = count);
                await CartItemsTable().insert({
                  'user_id': currentUserUid,
                  'product_id': widget!.productRecord?.id,
                  'quantity': _model.countControllerValue?.toDouble(),
                });
              },
              stepSize: 1,
              minimum: 0,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            ),
          ),
        ]
            .divide(SizedBox(width: 10.0))
            .addToStart(SizedBox(width: 5.0))
            .addToEnd(SizedBox(width: 10.0)),
      ),
    );
  }
}
