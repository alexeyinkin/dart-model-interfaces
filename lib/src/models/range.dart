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
  static bool after<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isAfter(b);
  }

  /// Returns if [a] starts after [b] ends.
  @Deprecated('Use after as it is more clear')
  static bool afterInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isAfter(b);
  }

  /// Returns if [a] starts after or where [b] ends.
  static bool afterOrTouching<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isAfterOrTouching(b);
  }

  /// Returns if [a] starts after or where [b] ends.
  @Deprecated('Use afterOrTouching as it is more clear')
  static bool afterExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isAfterOrTouching(b);
  }

  /// Returns if [a] ends before [b] starts.
  static bool before<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isBefore(b);
  }

  /// Returns if [a] ends before [b] starts.
  @Deprecated('Use before as it is more clear')
  static bool beforeInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isBefore(b);
  }

  /// Returns if [a] ends before or where [b] starts.
  static bool beforeOrTouching<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isBeforeOrTouching(b);
  }

  /// Returns if [a] ends before or where [b] starts.
  @Deprecated('Use beforeOrTouching as it is more clear')
  static bool beforeExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isBeforeOrTouching(b);
  }

  /// Returns if the ranges overlap deeper than their limiting points.
  static bool overlap<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isOverlapping(b);
  }

  /// Returns if the ranges overlap deeper than their limiting points.
  @Deprecated('Use overlap as it is more clear')
  static bool overlapInclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isOverlapping(b);
  }

  /// Returns if the ranges overlap or touch one another.
  static bool overlapOrTouch<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isOverlappingOrTouching(b);
  }

  /// Returns if the ranges overlap or touch one another.
  @Deprecated('Use overlapOrTouch as it is more clear')
  static bool overlapExclusive<T extends Comparable>(Range<T> a, Range<T> b) {
    return a.isOverlappingOrTouching(b);
  }
}

/// An extension to hold methods so you can implement this class
/// instead of extending it.
extension RangeExtension<T extends Comparable> on Range<T> {
  /// Returns if this starts after [other] ends.
  bool isAfter(Range<T> other) {
    if (start.compareTo(other.end) > 0) return true;
    return false;
  }

  /// Returns if this starts after or where [other] ends.
  bool isAfterOrTouching(Range<T> other) {
    if (start.compareTo(other.end) >= 0) return true;
    return false;
  }

  /// Returns if this ends before [other] starts.
  bool isBefore(Range<T> other) {
    if (end.compareTo(other.start) < 0) return true;
    return false;
  }

  /// Returns if this ends before or where [other] starts.
  bool isBeforeOrTouching(Range<T> other) {
    if (end.compareTo(other.start) <= 0) return true;
    return false;
  }

  /// Returns if the ranges overlap deeper than their limiting points.
  bool isOverlapping(Range<T> other) {
    if (start.compareTo(other.end) > 0) return false;
    if (end.compareTo(other.start) < 0) return false;
    return true;
  }

  /// Returns if the ranges overlap or touch one another.
  bool isOverlappingOrTouching(Range<T> other) {
    if (start.compareTo(other.end) >= 0) return false;
    if (end.compareTo(other.start) <= 0) return false;
    return true;
  }
}
