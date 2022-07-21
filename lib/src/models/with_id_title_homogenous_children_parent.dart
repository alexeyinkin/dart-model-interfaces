import 'with_id_homogenous_children_parent.dart';
import 'with_id_title_children_parent.dart';

/// Anything with ID, title, and children an an optional parent
/// of the same type [T].
abstract class WithIdTitleHomogenousChildrenParent<I,
        T extends WithIdTitleHomogenousChildrenParent<I, T>>
    implements
        WithIdTitleChildrenParent<I, T, T>,
        WithIdHomogenousChildrenParent<I, T> {}
