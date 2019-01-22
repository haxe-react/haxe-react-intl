package react.intl.comp;

import react.ReactComponent;
import react.intl.PluralFormatOptions;

#if (!react_next && (react < "2.0"))
private typedef ReactFragment = react.ReactComponent.ReactElement;
#else
import react.ReactComponent.ReactFragment;
#end

typedef FormattedPluralProps = {
	> PluralFormatOptions,
	var value:Any;
	var other:ReactFragment;
	@:optional var zero:ReactFragment;
	@:optional var one:ReactFragment;
	@:optional var two:ReactFragment;
	@:optional var few:ReactFragment;
	@:optional var many:ReactFragment;
	@:optional var children:ReactFragment->ReactFragment;
}

/**
	This component uses the `formatPlural` API.

	By default `<FormattedPlural>` will select a plural category (`zero`,
	`one`, `two`, `few`, `many`, or `other`) and render the corresponding React
	element into a `<span>`. If you need to customize rendering, you can either
	wrap it with another React element (recommended), or pass a function as the
	child.
**/
@:jsRequire('react-intl', 'FormattedPlural')
extern class FormattedPlural extends ReactComponentOfProps<FormattedPluralProps> {}

