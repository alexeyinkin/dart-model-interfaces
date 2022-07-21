/// Anything with comparable [start] and [end].
///
/// Allows to compare ranges to see if they overlap
/// or entirely go one after another.
class Range<T extends Comparable> {
  /// The start of the range.
  final T start;

  /// The end of the range.
  final T end;

  /// Creates an instance.
  Range(this.start, this.end);

  /// Returns if [a] starts after [b] ends.
  static bool afterInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.start.compareTo(b.end) > 0) return true;
    return false;
  }

  /// Returns if [a] starts after or where [b] ends.
  static bool afterExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.start.compareTo(b.end) >= 0) return true;
    return false;
  }

  /// Returns if [a] ends before [b] starts.
  static bool beforeInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.end.compareTo(b.start) < 0) return true;
    return false;
  }

  /// Returns if [a] ends before or where [b] starts.
  static bool beforeExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.end.compareTo(b.start) <= 0) return true;
    return false;
  }

  /// Returns if the ranges overlap deeper than their limiting points.
  static bool overlapInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.start.compareTo(b.end) > 0) return false;
    if (a.end.compareTo(b.start) < 0) return false;
    return true;
  }

  /// Returns if the ranges overlap deeper than their limiting points.
  static bool overlapExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    if (a.start.compareTo(b.end) >= 0) return false;
    if (a.end.compareTo(b.start) <= 0) return false;
    return true;
  }
}
