package react.intl;

typedef IntlConfig = {
	var locale:String;
	var formats:{}; // TODO: more precise type?
	var messages:Dynamic<String>;
	var defaultLocale:String;
	var defaultFormats:{}; // TODO: more precise type?
}

