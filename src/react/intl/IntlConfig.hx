package react.intl;

#if (!react_next && (react < "2.0"))
private typedef ReactType = react.React.CreateElementType;
#else
import react.ReactType;
#end


typedef IntlConfig = {
	@:optional var locale:String;
	@:optional var formats:{}; // TODO: more precise type?
	@:optional var messages:Dynamic<String>;
	@:optional var defaultLocale:String;
	@:optional var defaultFormats:{}; // TODO: more precise type?
	@:optional var textComponent:ReactType;
}

