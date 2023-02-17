import 'with_id.dart';
import 'with_slug.dart';

/// Anything with an ID and a Slug.
abstract class WithIdSlug<I> implements WithId<I>, WithSlug {}
