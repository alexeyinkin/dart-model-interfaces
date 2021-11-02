abstract class Normalizable {
  /// Returns a map of properties.
  /// This should really be named `toMap`, but this is the name of a method
  /// that json.encode calls on objects that are not encodable.
  Map<String, dynamic> toJson();

  static List<Map<String, dynamic>> toJsons(Iterable<Normalizable> list) {
    return list
        .map((item) => item.toJson())
        .toList(growable: false)
    ;
  }
}
