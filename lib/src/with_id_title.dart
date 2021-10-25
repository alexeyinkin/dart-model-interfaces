import 'with_id.dart';
import 'with_title.dart';

class WithIdTitle<T> implements WithId<T>, WithTitle {
  @override
  final T id;

  @override
  final String title;

  const WithIdTitle({
    required this.id,
    required this.title,
  });
}
