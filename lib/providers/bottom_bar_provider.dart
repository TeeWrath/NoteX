import "../core/utils/state_handler.dart";

class BottomBarProvider extends StateHandler {
  BottomBarProvider() : super();

  int _bottomBarIndex = 0;
  int get bottomBarIndex => _bottomBarIndex;

  void changeIndex(int idx) {
    _bottomBarIndex = idx;
    notifyListeners();
  }
}
