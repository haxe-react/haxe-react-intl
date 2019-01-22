package react.intl;

import haxe.extern.EitherType;

#if (!react_next && (react < "2.0"))
private typedef ReactType = react.React.CreateElementType;
#else
import react.ReactType;
#end

@:jsRequire('react-intl')
extern class ReactIntl {
	/**
		This function provides a way to register locale data with the library.
		The locale data added with this function supports plural and
		relative-time formatting features as described in Loading Locale Data
		[1].

		Note:
		This function mutates a shared locale data registry which is used by
		all importers of the module instance.

		[1]: https://github.com/yahoo/react-intl/wiki#loading-locale-data
	**/
	static function addLocaleData<LocaleData:{locale:String}>(data:EitherType<LocaleData, Array<LocaleData>>):Void;

	/**
		This function is simply a hook for the babel-plugin-react-intl [1]
		package to use when extracting default messages defined in JavaScript
		source files. This function simply returns the Message Descriptor map
		object that's passed-in.

		[1]: https://github.com/yahoo/babel-plugin-react-intl
	**/
	static function defineMessages(messageDescriptors:Dynamic<MessageDescriptor>):Dynamic<MessageDescriptor>;

	/**
		This function is a High-Order Component (HOC) factory. It will wrap the
		passed-in React component with another React component which provides
		the imperative formatting API into the wrapped component via its
		`props`. (This is similar to the connect-to-stores pattern found in
		many Flux implementations.)

		By default, the formatting API will be provided to the wrapped
		component via `props.intl`, but this can be overridden when specifying
		`options.intlPropName`. The value of the prop will be of type
		`IntlShape`.
	**/
	static function injectIntl(wrappedComponent:ReactType, ?options:InjectIntlOptions):ReactType;
}
