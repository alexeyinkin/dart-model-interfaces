This package provides common interfaces for your models:

* `WithId<T>`. For your models that have IDs. `T` is commonly being `int` or `String`.

* `WithTitle`. For your models that have a concept of a visible title.

* `WithIdTitle<T>`. For your models that have both.
You often need models of only ID and title. For this reason, it is a class
not an interface. But you can use it as an interface by implementing it
in your models.

## Additional information

This package is created mostly for my internal use so it is not documented well.
Feel free to file issues if you find bugs or want some extra features.
Before contributing, it is a good idea to file an issue first to discuss it.
