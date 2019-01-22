package react.intl.comp;

import react.ReactComponent;
import react.intl.RelativeTimeFormatOptions;

#if (!react_next && (react < "2.0"))
private typedef ReactFragment = react.ReactComponent.ReactElement;
#else
import react.ReactComponent.ReactFragment;
#end

typedef FormattedRelativeProps = {
	> RelativeTimeFormatOptions,
	var value:Any;
	@:optional var format:String;
	@:optional var updateInterval:Float;
	@:optional var initialNow:Any;
	@:optional var children:String->ReactFragment;
}

/**
	This component uses the `formatRelative` API.

	By default `<FormattedRelative>` will render the formatted relative time
	into a `<span>`, and update it a maximum of every 10 seconds. If you need
	to customize rendering, you can either wrap it with another React element
	(recommended), or pass a function as the child.

	Note:
	You can adjust the maximum interval that the component will re-render by
	setting the `updateInterval` in `ms`. A falsy value will turn off
	auto-updating. The updating is smart and will schedule the next update for
	the next interesting moment.
**/
@:jsRequire('react-intl', 'FormattedRelative')
extern class FormattedRelative extends ReactComponentOfProps<FormattedRelativeProps> {}

