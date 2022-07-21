import 'with_id.dart';
import 'with_title.dart';

/// Anything with both an ID and a title.
class WithIdTitle<T> implements WithId<T>, WithTitle {
  @override
  final T id;

  @override
  final String title;

  /// Creates an instance.
  const WithIdTitle(
    this.id,
    this.title,
  );
}
