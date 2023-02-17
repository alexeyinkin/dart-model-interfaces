import 'with_ancestor_ids.dart';
import 'with_children.dart';
import 'with_homogenous_parent.dart';
import 'with_id.dart';

/// Anything with ID, and children and an optional parent of the same type [T].
abstract class WithIdHomogenousChildrenParent<I,
        T extends WithIdHomogenousChildrenParent<I, T>>
    implements
        WithId<I>,
        WithChildren<T>,
        WithHomogenousParent<T>,
        WithAncestorIds<I> {
  @override
  Iterable<I> get ancestorIdsDownstream {
    final parent = this.parent;

    if (parent == null) return const [];

    return [
      ...parent.ancestorIdsDownstream,
      parent.id,
    ];
  }

  @override
  Iterable<I> get ancestorIdsUpstream {
    final parent = this.parent;

    if (parent == null) return const [];

    return [
      parent.id,
      ...parent.ancestorIdsUpstream,
    ];
  }
}

/// An extension to hold methods so you can implement this class
/// instead of extending it.
extension WithIdHomogenousChildrenParentExtension<I,
        T extends WithIdHomogenousChildrenParent<I, T>>
    on WithIdHomogenousChildrenParent<I, T> {
  /// The parent's [id].
  I? get parentId => parent?.id;
}
