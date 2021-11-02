This package provides common interfaces for your models:

* `WithId<T>`. For your models that have IDs. `T` is commonly being `int` or `String`.

* `WithTitle`. For your models that have a concept of a visible title.

* `WithIdTitle<T>`. For your models that have both.
You often need models of only ID and title. For this reason, it is a class
not an interface. But you can use it as an interface by implementing it
in your models.

* `WithChildren<C>`, `WithParent<P>`. For your models that have some hierarchy.
`C` and `P` can be the same as the implementing class for homogeneous hierarchy.

* `WithIdChildrenParent<I, C, P>`, `WithIdTitleChildrenParent<I, C, P>`.
Other useful combinations.

* `Normalizable`. Declares `toJson()`.

## Additional information

This package is created mostly for my internal use so it is not documented well.
Expect breaking changes.

Feel free to file issues if you find bugs or want some extra features.
Before contributing, it is a good idea to file an issue first to discuss it.
