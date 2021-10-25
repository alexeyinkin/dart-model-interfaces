abstract class WithId<I> {
  I get id;

  static T? getById<I, T extends WithId<I>>(Iterable<T> items, I id) {
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }

  static Iterable<T> getByIds<I, T extends WithId<I>>(Iterable<T> items, Iterable<I> ids) {
    final idsMap = <I, void>{for (var id in ids) id: null};
    final result = <T>[];

    for (final item in items) {
      if (idsMap.containsKey(item.id)) {
        result.add(item);
      }
    }

    return result;
  }

  static Iterable<I> getIds<I>(Iterable<WithId<I>> items) {
    return items.map((item) => item.id);
  }
}
