import 'with_parent.dart';

/// Anything with an optional parent of the same type.
abstract class WithHomogenousParent<T extends WithHomogenousParent<T>>
    implements WithParent<T> {
  @override
  T? get parent;
}

/// An extension to hold methods so you can implement this class
/// instead of extending it.
extension WithHomogenousParentExtension<T extends WithHomogenousParent<T>>
    on WithHomogenousParent<T> {
  /// Returns a list with this object and all its ancestors
  /// in the upstream order.
  @Deprecated('Use withAncestorsUpstream')
  Iterable<WithHomogenousParent<T>> withAncestors() {
    return [
      this,
      if (parent != null) ...parent!.withAncestors(),
    ];
  }

  /// Returns a list with this object and all its ancestors
  /// starting with the parent and walking up.
  Iterable<WithHomogenousParent<T>> withAncestorsUpstream() {
    return [
      this,
      if (parent != null) ...parent!.withAncestorsUpstream(),
    ];
  }

  /// Returns a list with this object and all its ancestors
  /// stating with the root and walking down.
  Iterable<WithHomogenousParent<T>> withAncestorsDownstream() {
    return [
      if (parent != null) ...parent!.withAncestorsDownstream(),
      this,
    ];
  }
}
