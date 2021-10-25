abstract class WithId<T> {
  T get id;

  static T? getById<I, T extends WithId<I>>(Iterable<T> items, I id) {
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }
}

abstract class WithTitle {
  String get title;

  static Iterable<String> getTitles(List<WithTitle> items) {
    return items
        .map((item) => item.title);
  }

  static int compareCaseInsensitive(WithTitle a, WithTitle b) {
    return a.title.toLowerCase().compareTo(
      b.title.toLowerCase(),
    );
  }
}

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
