import 'with_id_title.dart';
import 'with_id_children_parent.dart';

abstract class WithIdTitleChildrenParent<I, C, P> implements
    WithIdTitle<I>,
    WithIdChildrenParent<I, C, P>
{
}
