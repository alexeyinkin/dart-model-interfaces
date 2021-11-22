import 'with_ancestor_ids.dart';
import 'with_children.dart';
import 'with_id.dart';
import 'with_parent.dart';

abstract class WithIdHomogenousChildrenParent<I, T extends WithIdHomogenousChildrenParent<I, T>> implements
    WithId<I>,
    WithChildren<T>,
    WithParent<T>,
    WithAncestorIds<I>
{
  I? get parentId;
}
