/// A tree node that can provide all its parents' IDs.
abstract class WithAncestorIds<I> {
  /// All parents' IDs.
  Iterable<I> get ancestorIds;
}
