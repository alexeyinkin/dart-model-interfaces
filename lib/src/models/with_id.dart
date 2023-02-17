import 'dart:collection';

/// Anything with an ID.
abstract class WithId<I> {
  ///
  const WithId();

  /// The ID.
  I get id;

  /// Finds an item with a given [id].
  static T? getById<I, T extends WithId<I>>(Iterable<T> items, I id) {
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }

  /// Finds items with given [ids].
  static Iterable<T> getByIds<I, T extends WithId<I>>(
    Iterable<T> items,
    Iterable<I> ids,
  ) {
    final idsSet = ids.toSet();
    final result = <T>[];

    for (final item in items) {
      if (idsSet.contains(item.id)) {
        result.add(item);
      }
    }

    return result;
  }

  /// Returns an [Iterable] with [id] of each item.
  static Iterable<I> getIds<I>(Iterable<WithId<I>> items) {
    return items.map((item) => item.id);
  }

  /// Returns a [LinkedHashMap] with all [items] mapped by [id].
  static Map<I, T> mapByIds<I, T extends WithId<I>>(Iterable<T> items) {
    return {for (final item in items) item.id: item};
  }
}
