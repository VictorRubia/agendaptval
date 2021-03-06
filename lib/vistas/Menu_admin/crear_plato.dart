import 'package:agendaptval/flutter_flow/flutter_flow_video_player.dart';
import 'package:agendaptval/modeloControlador/controller.dart';
import 'package:agendaptval/vistas/tareasAdmin/pictogramas_arasaac.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:io';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import '../../flutter_flow/flutter_image_add_drag_sort.dart';


class CrearPlatoAdminWidget extends StatefulWidget {
  const CrearPlatoAdminWidget({Key key}) : super(key: key);

  @override
  _CrearPlatoAdminWidgetState createState() => _CrearPlatoAdminWidgetState();
}

class _CrearPlatoAdminWidgetState extends StateMVC {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool noTipo = false;
  final ImagePicker _picker = ImagePicker();
  List<ImageDataItem> pictogramaList = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _keyPicto = GlobalKey();


  _CrearPlatoAdminWidgetState(): super(Controller()){
    _con = Controller.con;
  }
  Controller _con;
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: null);
    textController2 = TextEditingController(text: null);
    textController3 = TextEditingController(text: null);
  }


  doAddPictograma(List<ImageDataItem> uploading, onBegin) async {
    File pictograma = await Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => ArasaacWidget(),
      ),
    );
    if (pictograma == null)
      return null;
    if (onBegin != null) await onBegin();
    await sleep(Duration(seconds: 1));
    return ImageDataItem(pictograma.absolute.path, key: DateTime.now().millisecondsSinceEpoch.toString());
  }

  @override
  Widget build(BuildContext context) {
    var imgSize = (MediaQuery.of(context).size.width - 30) / 4.0;
    var videoSize = (MediaQuery.of(context).size.width - 30) / 3.0;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.laurelGreen,
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.pop(context);
          },
        ),
        title: Text(
          'Nuevo plato',
          style: FlutterFlowTheme.title1,
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.check,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {

              String tipo;
              if(_isChecked1)
                tipo = 'primero';
              else if (_isChecked2)
                tipo = 'segundo';
              else if (_isChecked3)
                tipo = 'postre';
              else{
                noTipo = true;
              }

              if(!textController1.text.isEmpty) {

                Results r = await _con.postPlato(
                    textController1.text, tipo, pictogramaList);
                print(r.toString());

                await Navigator.pop(context);
              }
              else{
                if(textController1.text.isEmpty) {
                  noTipo = false;
                  scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                        content: new Text(
                            'Error: Debe introducir un nombre'),
                        duration: new Duration(seconds: 7),
                      )
                  );
                  throw 'Debe introducir un nombre';

                }
              }
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child:
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24, 25, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'NOMBRE',
                            style:
                            FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF262D34),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24, 15, 24, 0),
                      child: TextField(
                        controller: textController1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24, 25, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'TIPO',
                            style:
                            FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF262D34),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10, 0, 10, 0),
                        child: Container(
                          child: CheckboxListTile(
                            title: const Text('Primero'),
                            activeColor:
                            FlutterFlowTheme.laurelGreenDarker,
                            selected: _isChecked1,
                            value: _isChecked1,
                            onChanged: (bool value) {
                              if(value) {
                                if (_isChecked2)
                                  _isChecked2 = false;
                                else if (_isChecked3)
                                  _isChecked3 = false;
                              }
                              setState(() {
                                _isChecked1 = value;
                              });
                            },
                          ),
                        )),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10, 0, 10, 0),
                        child: Container(
                          child: CheckboxListTile(
                            title:
                            const Text('Segundo'),
                            activeColor:
                            FlutterFlowTheme.laurelGreenDarker,
                            selected: _isChecked2,
                            value: _isChecked2,
                            onChanged: (bool value) {
                              if(value) {
                                if (_isChecked1)
                                  _isChecked1 = false;
                                else if (_isChecked3)
                                  _isChecked3 = false;
                              }
                              setState(() {
                                _isChecked2 = value;
                              });
                            },
                          ),
                        )),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10, 0, 10, 0),
                        child: Container(
                          child: CheckboxListTile(
                            title: const Text(
                                'Postre'),
                            activeColor:
                            FlutterFlowTheme.laurelGreenDarker,
                            selected: _isChecked3,
                            value: _isChecked3,
                            onChanged: (bool value) {
                              if(value) {
                                if (_isChecked2)
                                  _isChecked2 = false;
                                else if (_isChecked1)
                                  _isChecked1 = false;
                              }
                              setState(() {
                                _isChecked3 = value;
                              });
                            },
                          ),
                        )),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24, 20, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'PICTOGRAMAS',
                            style:
                            FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF262D34),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ImageAddDragContainer(
                      key: _keyPicto,
                      data: pictogramaList,
                      maxCount: 9,
                      readOnly: false,
                      draggableMode: false,
                      itemSize: Size(imgSize, imgSize),
                      addWidget: Material(
                        color: Colors.transparent,
                        child: Center(
                          child: Ink(
                            decoration: const ShapeDecoration(
                              color: FlutterFlowTheme.laurelGreenDarker,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add, color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                      onAddImage: (uploading, onBegin) async {
                        return await doAddPictograma(uploading, onBegin);
                      },
                      onChanged: (items) async {
                        pictogramaList = items;
                      },
                      onTapItem: (item, index) {
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("click item: $index, ${item.key}")));
                      },
                      builderItem: (context, key, url, type) {
                        return Container(
                          color: Colors.white,
                          child: url == null || url.isEmpty ? null : Image.file(File(url)),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ],
          )
      ),
    );

  }

}
