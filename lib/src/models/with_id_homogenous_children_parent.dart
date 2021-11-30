import 'with_ancestor_ids.dart';
import 'with_children.dart';
import 'with_homogenous_parent.dart';
import 'with_id.dart';

abstract class WithIdHomogenousChildrenParent<I, T extends WithIdHomogenousChildrenParent<I, T>> implements
    WithId<I>,
    WithChildren<T>,
    WithHomogenousParent<T>,
    WithAncestorIds<I>
{
  I? get parentId;
}
