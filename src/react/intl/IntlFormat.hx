package react.intl;

import react.intl.DateTimeFormatOptions;
import react.intl.NumberFormatOptions;
import react.intl.RelativeTimeFormatOptions;

typedef IntlFormat = {
	/**
		This function will return a formatted date string. It expects a `value`
		which can be parsed as a date (i.e., `isFinite(new Date(value))`), and
		accepts `options` that conform to `DateTimeFormatOptions`.
	**/
	var formatDate:Any->?DateTimeFormatOptionsWithFormat->String;

	/**
		This function will return a formatted date string, but it differs from
		`formatDate` by having the following default options:

		```
		{
			hour: 'numeric',
			minute: 'numeric'
		}
		```

		It expects a `value` which can be parsed as a date (i.e.,
		`isFinite(new Date(value))`), and accepts `options` that conform to
		`DateTimeFormatOptions`.
	**/
	var formatTime:Any->?DateTimeFormatOptionsWithFormat->String;

	/**
		This function will return a formatted relative time string (e.g., "1
		hour ago"). It expects a `value` which can be parsed as a date (i.e.,
		`isFinite(new Date(value))`), and accepts `options` that conform to
		`RelativeFormatOptions`.

		By default, the `value` is compared with the current time at the time
		the function is called, but this reference time value can be explicitly
		specified via the `now` option.

		```
			var now = Date.now().getTime();
			formatRelative(now); // "now"
			formatRelative(now - 1000); // "1 second ago"
			formatRelative(now + 1000 * 60 * 60); // "in 1 hour"
			formatRelative(now - 1000 * 60 * 60 * 24); // "yesterday"
			formatRelative(now - 1000 * 60 * 60 * 24, {style: 'numeric'}); // "1 day ago"
			formatRelative(now - 1000 * 60 * 60 * 24, {units: 'hour'}); // "24 hours ago"
		```
	**/
	var formatRelative:Any->?RelativeTimeFormatOptionsWithFormat->String;

	/**
		This function uses `Intl.NumberFormat` [1] which allows them to provide
		options.

		This function will return a formatted number string. It expects a
		`value` which can be parsed as a number, and accepts `options` that
		conform to `NumberFormatOptions`.

		[1]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NumberFormat
	**/
	var formatNumber:Any->?NumberFormatOptionsWithFormat->String;

	/**
		This function will return a plural category string: `"zero"`, `"one"`,
		`"two"`, `"few"`, `"many"`, or `"other"`. It expects a `value` which
		can be parsed as a number, and accepts `options` that conform to
		`PluralFormatOptions`.

		This is a low-level utility whose output could be provided to a
		`switch` statement to select a particular string to display.

		```
		formatPlural(0); // "other"
		formatPlural(1); // "one"
		formatPlural(2); // "other"
		formatPlural(2, {style: 'ordinal'}); // "two"
		formatPlural(3, {style: 'ordinal'}); // "few"
		formatPlural(4, {style: 'ordinal'}); // "other"
		```

		Note:
		This function should only be used in apps that only need to support one
		language. If your app supports multiple languages use `formatMessage`
		instead.
	**/
	var formatPlural:Any->?PluralFormatOptions->PluralResult;

	/**
		This function will return a formatted message string. It expects a
		`MessageDescriptor` with at least an `id` property, and accepts a
		shallow `values` object which are used to fill placeholders in the
		message.

		If a translated message with the `id` has been passed to the
		`<IntlProvider>` via its `messages` prop it will be formatted,
		otherwise it will fallback to formatting `defaultMessage`.
	**/
	var formatMessage:MessageDescriptor->?{}->String;

	/**
		Note:
		This API is provided to format legacy string message that contain HTML,
		but is not recommended, use `<FormattedMessage>` instead.
	**/
	var formatHTMLMessage:MessageDescriptor->?{}->String;
}
