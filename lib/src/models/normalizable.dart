/// Anything that can be normalized to a map.
abstract class Normalizable {
  /// Returns a map of properties.
  ///
  /// This should really be named `toMap`, but this is the name of a method
  /// that json.encode calls on objects that are not encodable.
  Map<String, dynamic> toJson();

  /// Runs [toJson] on [items].
  static Iterable<Map<String, dynamic>> toJsons(Iterable<Normalizable> items) {
    return items.map((item) => item.toJson());
  }

  /// Runs [toJson] on [items].
  static List<Map<String, dynamic>> toJsonList(
    Iterable<Normalizable> items, {
    bool growable = false,
  }) {
    return toJsons(items).toList(growable: growable);
  }
}
