/// Anything with a title.
abstract class WithTitle {
  /// The title.
  String get title;

  /// Collects titles from an iterable.
  static Iterable<String> getTitles(Iterable<WithTitle> items) {
    return items.map((item) => item.title);
  }

  /// A case-insensitive comparator of titles.
  static int compareCaseInsensitive(WithTitle a, WithTitle b) {
    return a.title.toLowerCase().compareTo(
          b.title.toLowerCase(),
        );
  }
}
