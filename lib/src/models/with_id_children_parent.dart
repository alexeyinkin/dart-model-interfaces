import 'with_children.dart';
import 'with_id.dart';
import 'with_parent.dart';

/// Anything with ID, children of type [C] and an optional parent of type [P].
abstract class WithIdChildrenParent<I, C, P>
    implements WithId<I>, WithChildren<C>, WithParent<P> {}
