import 'with_children.dart';
import 'with_id.dart';
import 'with_parent.dart';

abstract class WithIdChildrenParent<I, C, P> implements
    WithId<I>,
    WithChildren<C>,
    WithParent<P>
{
}
