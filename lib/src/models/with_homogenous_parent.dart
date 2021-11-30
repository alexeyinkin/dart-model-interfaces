import 'with_parent.dart';

abstract class WithHomogenousParent<T extends WithHomogenousParent<T>> implements WithParent<T> {
  T? get parent;

  static List<T> withAncestors<T extends WithHomogenousParent<T>>(T obj) {
    final list = <T>[];
    _addThisAndAncestorsToList(obj, list);
    return list;
  }

  static void _addThisAndAncestorsToList<T extends WithHomogenousParent<T>>(T obj, List<T> list) {
    list.add(obj);

    if (obj.parent != null) {
      _addThisAndAncestorsToList<T>(obj.parent!, list);
    }
  }
}
