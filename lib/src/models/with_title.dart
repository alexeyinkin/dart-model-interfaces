abstract class WithTitle {
  String get title;

  static Iterable<String> getTitles(Iterable<WithTitle> items) {
    return items
        .map((item) => item.title);
  }

  static int compareCaseInsensitive(WithTitle a, WithTitle b) {
    return a.title.toLowerCase().compareTo(
      b.title.toLowerCase(),
    );
  }
}
