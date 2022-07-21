import 'with_parent.dart';

/// Anything with an optional parent of the same type.
abstract class WithHomogenousParent<T extends WithHomogenousParent<T>>
    implements WithParent<T> {
  @override
  T? get parent;

  /// Returns a list with this object and all its ancestors
  /// in the upstream order.
  Iterable<WithHomogenousParent<T>> withAncestors() {
    return [
      this,
      if (parent != null) ...parent!.withAncestors(),
    ];
  }
}
