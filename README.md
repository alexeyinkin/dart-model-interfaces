[![Pub Package](https://img.shields.io/pub/v/model_interfaces.svg)](https://pub.dev/packages/model_interfaces)
[![GitHub](https://img.shields.io/github/license/alexeyinkin/dart-model-interfaces)](https://github.com/alexeyinkin/dart-model-interfaces/blob/main/LICENSE)
[![CodeFactor](https://img.shields.io/codefactor/grade/github/alexeyinkin/dart-model-interfaces?style=flat-square)](https://www.codefactor.io/repository/github/alexeyinkin/dart-model-interfaces)
[![Support Chat](https://img.shields.io/badge/support%20chat-telegram-brightgreen)](https://ainkin.com/chat)

This package provides common interfaces for your models: `WithId<I>`, `WithTitle`,
`WithChildren<C>`, etc. and their combinations like `WithIdTitle<I>`.

You can make some models in your package implement these interfaces.
It allows you to make abstract widgets, controllers and any other logic that can
show and work on any of these models.

The benefits are:

- **Less code duplication** for lists, dropdowns, chips, etc.,
  because you no longer need a widget per class.
- **Naming control**. If you implement these, no class will stray from your rules,
  e.g. by using `name` instead of `title`.

Many programmers use their own parent classes like these per project.
This package allows you to:

- Reduce the work to start a project.
- Copy models between your projects as they are sure to follow the same interfaces.

See the full list of interfaces
[here](https://pub.dev/documentation/model_interfaces/latest/model_interfaces/model_interfaces-library.html)

If you need an extra combination, you can mix the interfaces yourself in your project.
Or consider making a PR.

## Tech Support Chat

Do you have any questions? Feel free to ask in the [Telegram Support Chat](https://ainkin.com/chat).

Or even just join to say 'Hi!'. I like to hear from the users.
