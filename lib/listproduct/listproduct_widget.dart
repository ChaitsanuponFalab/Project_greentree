import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../payment/payment_widget.dart';
import '../shop/shop_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListproductWidget extends StatefulWidget {
  const ListproductWidget({Key key}) : super(key: key);

  @override
  _ListproductWidgetState createState() => _ListproductWidgetState();
}

class _ListproductWidgetState extends State<ListproductWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/7e717ed737e69486175ee7b0cfa2d99b.jpg',
                    width: 350,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                    child: Container(
                      width: double.infinity,
                      height: 330,
                      decoration: BoxDecoration(
                        color: Color(0xFF104F25),
                        shape: BoxShape.rectangle,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'บอนไซ ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 30,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        165, 0, 0, 0),
                                    child: Text(
                                      '1500',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.monetization_on_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 22,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                              child: Text(
                                'รายละเอียด\nวิธีการดูแล\nเลี้ยงได้ทั้งแดดจัดและรำไร รดน้ำ 1-2 วัน ครั้ง\nถ้าแดดแรง ให้รดน้ำทุกวันเช้าเย็น\n\nข้อควรรู้การสั่งซื้อต้นไม้ออนไลน์\n1. สินค้าเป็นต้นไม้จริงทุกต้น แต่ละต้นมีฟอร์มแตกต่างกันไปตามธรรมชาติ\n2. ต้นนี้เมื่อแพคลงกล่อง ต้นอาจมีเอียงบ้าง เพราะในกล่องมืด ต้นจะพยายามเลื้อยหาแสง สามารถแก้ได้ง่ายๆ โดยการนำต้นไม้ไปรับแดดตอนเช้า ต้นจะกลับมาตั้งตรง\n\nจัดส่งทุกวัน : สวนอยู่นนทบุรีครับ',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentWidget(),
                                ),
                              );
                            },
                            text: 'ซื้อสินค้า',
                            options: FFButtonOptions(
                              width: 130,
                              height: 50,
                              color: Color(0xFF04050E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.shopping_cart_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShopWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
