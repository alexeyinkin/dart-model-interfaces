/// Anything with an ID.
abstract class WithId<I> {
  // ignore: public_member_api_docs
  const WithId();

  /// The ID.
  I get id;

  /// Finds an item with a given [id].
  @Deprecated('Use getById() from the extension on Iterable<WithId>')
  static T? getById<I, T extends WithId<I>>(Iterable<T> items, I id) {
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }

  /// Finds items with given [ids].
  @Deprecated('Use getByIds() from the extension on Iterable<WithId>')
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
  @Deprecated('Use ids from the extension on Iterable<WithId>')
  static Iterable<I> getIds<I>(Iterable<WithId<I>> items) {
    return items.map((item) => item.id);
  }

  /// Returns a [Map] with all [items] mapped by [id].
  @Deprecated('Use mapByIds() from the extension on Iterable<WithId>')
  static Map<I, T> mapByIds<I, T extends WithId<I>>(Iterable<T> items) {
    return {for (final item in items) item.id: item};
  }
}

// ignore: public_member_api_docs
extension WithIdIterableExtension<I, T extends WithId<I>> on Iterable<T> {
  /// Finds an item with a given [id].
  T? getById(I id) {
    for (final item in this) {
      if (item.id == id) return item;
    }
    return null;
  }

  /// Finds items with given [ids].
  Iterable<T> getByIds(Iterable<I> ids) {
    final idsSet = ids.toSet();
    return where((item) => idsSet.contains(item.id));
  }

  /// Returns an [Iterable] with the ID of each item.
  Iterable<I> get ids => map((item) => item.id);

  /// Returns a [Map] with all items mapped by their IDs.
  Map<I, T> mapByIds() => {for (final obj in this) obj.id: obj};
}
