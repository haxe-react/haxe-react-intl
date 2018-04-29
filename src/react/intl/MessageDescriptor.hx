package react.intl;

import haxe.extern.EitherType;

typedef MessageDescriptor = {
	var id:String;
	var defaultMessage:String;
	@:optional var description:EitherType<String, {}>;
}

