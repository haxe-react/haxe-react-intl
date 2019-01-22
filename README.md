# Haxe React Intl

A Haxe library offering externs for the [React-Intl](https://github.com/yahoo/react-intl) library.

React Intl provides React components and an API to format dates, numbers, and strings, including pluralization and handling translations.

## Documentation

The haxe documentation has not been written yet (PRs welcome!), but the [original React Intl wiki](https://github.com/yahoo/react-intl/wiki) covers most topics.

The main differences between using the javascript lib and this haxe lib are:

 * Components are in the [`react.intl.comp`](/src/react/intl/comp/) package.
 * `addLocaleData`, `defineMessages` and `injectIntl` are static methods from [`react.intl.ReactIntl`](/src/react/intl/ReactIntl.hx).
 * `intlShape` is available as [`react.intl.IntlShape`](/src/react/intl/IntlShape.hx) typedef for use in components `TProps`.

## Roadmap

 * [X] ReactIntl [methods](https://github.com/yahoo/react-intl/wiki/API)
 * [X] React Intl [components](https://github.com/yahoo/react-intl/wiki/Components)
 * [X] [Examples apps](https://github.com/yahoo/react-intl/tree/master/examples)
	 * [X] React-Router example
	 * [X] Translations example
 * [ ] README.md
 * [ ] Test suite / CI

