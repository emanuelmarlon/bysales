import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for GridView widget.
  ScrollController? gridViewController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    gridViewController = ScrollController();
    listViewController = ScrollController();
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    gridViewController?.dispose();
    listViewController?.dispose();
    menuModel.dispose();
  }
}
