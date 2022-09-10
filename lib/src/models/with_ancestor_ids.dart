import 'package:meta/meta.dart';

/// A tree node that can provide all its parents' IDs.
abstract class WithAncestorIds<I> {
  /// All parents' IDs.
  @Deprecated('Use ancestorIdsUpstream or ancestorIdsDownstream')
  @nonVirtual
  Iterable<I> get ancestorIds =>
      throw Exception('Use ancestorIdsUpstream or ancestorIdsDownstream');

  /// All ancestor IDs starting from root and walking down.
  Iterable<I> get ancestorIdsDownstream;

  /// All ancestor IDs starting from parent and walking up.
  Iterable<I> get ancestorIdsUpstream;
}
