## 0.3.0

* **BREAKING:** Added `ancestorIdsDownstream` and `ancestorIdsUpstream` to `WithAncestorIds`.
* Deprecated `WithAncestorIds.ancestorIds`.
* Added `WithSlug`, `WithIdSlug`, `WithIdSlugTitle`.
* Moved many instance methods to extensions so implementing is possible instead of extending.
* Renamed methods in `Range` to be more precise. The older ones are deprecated.
  Added instance method equivalents.

## 0.2.0

* **BREAKING:** `WithHomogenousParent.withAncestors` is now non-static and returns an `Iterable`.
* **BREAKING:** `Normalizable.toJsons` returns an `Iterable` instead of a `List`.
* Added `Normalizable.toJsonList`.
* Added `growable` param to `Normalizable.toJsons`.
* Using `total_lints`, fixed issues, fixed formatting.
* Re-licensed under MIT-0.
* Improved doc comments.

## 0.1.4

* `WithId.mapByIds` accepts `Iterable`.

## 0.1.3

* `Range` is now non-abstract.

## 0.1.2

* Added `Range`.

## 0.1.1

* Added `WithHomogenousParent`.

## 0.1.0

* **BREAKING:** `WithIdTitle` constructor uses positional arguments.

## 0.0.5

* Added `WithAncestorIds`.
* Added `WithIdHomogenousChildrenParent`.
* Added `WithIdTitleHomogenousChildrenParent`.
* Changed `Normalizable.toJsons()` from `Iterable` to `List`.

## 0.0.4

* Added `Normalizable`.

## 0.0.3

* Added `WithId.mapByIds()`.

## 0.0.2

* Accept `Iterable` instead of `List` for many inputs.
* Added `WithChildren<C>`.
* Added `WithParent<P>`.
* Added `WithIdChildrenParent<I, C, P>`.
* Added `WithIdTitleChildrenParent<I, C, P>`.

## 0.0.1

* Initial release.
