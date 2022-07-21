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
  /// The parent's [id].
  I? get parentId;
}
