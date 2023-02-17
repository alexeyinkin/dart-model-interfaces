import 'with_id.dart';
import 'with_slug.dart';
import 'with_title.dart';

/// Anything with an ID, a Slug, and a title.
abstract class WithIdSlugTitle<I> implements WithId<I>, WithSlug, WithTitle {}
