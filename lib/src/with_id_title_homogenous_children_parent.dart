import 'package:model_interfaces/model_interfaces.dart';

abstract class WithIdTitleHomogenousChildrenParent<I, T extends WithIdTitleHomogenousChildrenParent<I, T>> implements
    WithIdTitleChildrenParent<I, T, T>,
    WithIdHomogenousChildrenParent<I, T>
{
}
