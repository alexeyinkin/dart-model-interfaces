import 'with_id_children_parent.dart';
import 'with_id_title.dart';

/// Anything with ID, title, children of type [C],
/// and an optional parent of type [P].
abstract class WithIdTitleChildrenParent<I, C, P>
    implements WithIdTitle<I>, WithIdChildrenParent<I, C, P> {}
