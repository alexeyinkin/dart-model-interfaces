abstract class Normalizable {
  Map<String, dynamic> toJson();

  static Iterable<Map<String, dynamic>> toJsons(Iterable<Normalizable> list) {
    return list
        .map((item) => item.toJson());
  }
}
