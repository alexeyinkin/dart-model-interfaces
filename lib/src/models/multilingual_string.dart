import 'dart:collection';

/// A map that maps language codes to string values.
class MultilingualString
    with MapBase<String, String>
    implements Map<String, String> {
  final Map<String, String> _values;

  /// Returns an empty object.
  MultilingualString([Map<String, String>? values]) : _values = values ?? {};

  @override
  String? operator [](Object? key) => _values[key];

  @override
  void operator []=(String key, String value) {
    _values[key] = value;
  }

  @override
  void clear() {
    _values.clear();
  }

  @override
  Iterable<String> get keys => _values.keys;

  @override
  String? remove(Object? key) {
    return _values.remove(key);
  }

  /// Returns a plain map from language codes to values.
  Map<String, String> toJson() => _values;

  /// Constructs an object from a plain [map].
  MultilingualString.fromJson(Map<String, dynamic> map)
      : _values = {
          for (final entry in map.entries)
            if (entry.value is String) entry.key: entry.value as String,
        };
}
