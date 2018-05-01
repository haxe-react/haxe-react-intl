package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.intl.comp.FormattedMessage;
import react.intl.comp.FormattedNumber;
import react.intl.comp.FormattedRelative;
import components.App.User;

typedef GreetingProps = {
	var user:User;
}

class Greeting extends ReactComponentOfProps<GreetingProps> {
	override public function render() {
		var defaultMessage = '
			Welcome {name}, you have received {unreadCount, plural,
				=0 {no new messages}
				one {{formattedUnreadCount} new message}
				other {{formattedUnreadCount} new messages}
			} since {formattedLastLoginTime}.
		';

		var values = {
			name: jsx('<b>${props.user.name}</b>'),
			unreadCount: props.user.unreadCount,
			formattedUnreadCount: jsx('
				<b><$FormattedNumber value=${props.user.unreadCount} /></b>
			'),
			formattedLastLoginTime: jsx('
				<$FormattedRelative value=${props.user.lastLoginTime} />
			')
		};

		return jsx('
			<p>
				<$FormattedMessage
					id="greeting.welcome_message"
					defaultMessage=$defaultMessage
					values=$values
				/>
			</p>
		');
	}
}
