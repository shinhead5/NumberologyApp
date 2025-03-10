import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

/// Keep design same, but make resolution for every phone, tablet, UI not mess
/// up in diferent resoluation phone
///
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: Color(0xFFFF8900),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: ListView(
              padding: EdgeInsets.zero,
              primary: false,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              26.0, 0.0, 26.0, 0.0),
                          child: GradientText(
                            'Welcome! \nYour Cheat Codes\nIs \nHere',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 27.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w200,
                                ),
                            colors: [Color(0xFFE75921), Color(0xFF202222)],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              26.0, 0.0, 26.0, 0.0),
                          child: GradientText(
                            '8188836908188836908818883698',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                )
                              ],
                            ),
                            colors: [Color(0xFFEA5529), Color(0xFFD83D20)],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                26.0, 0.0, 26.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://i.imgur.com/6NUioZ3.png',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              26.0, 0.0, 26.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        26.0, 0.0, 26.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            CalculateWidget.routeName);
                                      },
                                      text: 'Calculate Your Birthdate',
                                      icon: Icon(
                                        Icons.filter_8,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.black,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: Color(0xFFFF7100),
                                              fontSize: 35.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context
                                          .pushNamed(GematriaWidget.routeName);
                                    },
                                    text: 'Simple Gematria Calculator',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(ColorsWidget.routeName);
                                    },
                                    text: 'Lucky Colors',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(GameWidget.routeName);
                                    },
                                    text: 'Game + Education',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          CheatCodesWidget.routeName);
                                    },
                                    text: 'Cheat  Codes',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          TimingCalculatorWidget.routeName);
                                    },
                                    text: 'When/Timing Calculator',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context
                                          .pushNamed(SoulUrgeWidget.routeName);
                                    },
                                    text: 'Get Soul Urge Number',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(SoundWidget.routeName);
                                    },
                                    text: 'Sound For Soul',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                          LuckyLotteryWidget.routeName);
                                    },
                                    text: 'Lucky Lottery',
                                    icon: Icon(
                                      Icons.filter_8,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.black,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Color(0xFFFF7100),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
