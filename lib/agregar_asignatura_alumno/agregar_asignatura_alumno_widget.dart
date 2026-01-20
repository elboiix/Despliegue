import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'agregar_asignatura_alumno_model.dart';
export 'agregar_asignatura_alumno_model.dart';

class AgregarAsignaturaAlumnoWidget extends StatefulWidget {
  const AgregarAsignaturaAlumnoWidget({
    super.key,
    this.id,
  });

  final int? id;

  static String routeName = 'AgregarAsignaturaAlumno';
  static String routePath = '/agregarAsignaturaAlumno';

  @override
  State<AgregarAsignaturaAlumnoWidget> createState() =>
      _AgregarAsignaturaAlumnoWidgetState();
}

class _AgregarAsignaturaAlumnoWidgetState
    extends State<AgregarAsignaturaAlumnoWidget> {
  late AgregarAsignaturaAlumnoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgregarAsignaturaAlumnoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.listarAsignaturasAlumnos = await actions.listarAsignaturas();
      _model.listaAsignaturas2 =
          _model.listarAsignaturasAlumnos!.toList().cast<dynamic>();
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 300.0,
              height: MediaQuery.sizeOf(context).height * 0.3,
              decoration: BoxDecoration(
                color: Color(0xFF787878),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0xC6000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowDropDown<int>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<int>(
                          _model.dropDownValue ??= 0,
                        ),
                        options: List<int>.from((_model.listaAsignaturas2
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.id''',
                                    ))
                                .toList())
                            .cast<int>()),
                        optionLabels: _model.listaAsignaturas2
                            .map((e) => getJsonField(
                                  e,
                                  r'''$.nombre''',
                                ))
                            .toList()
                            .map((e) => e.toString())
                            .toList(),
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        width: 200.0,
                        height: 40.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: 'Select...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: Color(0xFFDADADA),
                        elevation: 2.0,
                        borderColor: Colors.transparent,
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await actions.agregarAsignaturaAlumno(
                            _model.dropDownValue!,
                            widget.id!,
                          );

                          context.pushNamed(AsignaturasAlumnoWidget.routeName);
                        },
                        text: 'Agregar asignatura',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF383737),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 30.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
