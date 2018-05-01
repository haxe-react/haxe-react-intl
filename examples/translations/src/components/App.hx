package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.intl.comp.FormattedMessage;

typedef AppState = {
	var user:User;
}

typedef User = {
	var name:String;
	var unreadCount:Int;
	var lastLoginTime:Float;
}

class App extends ReactComponentOfState<AppState> {
	public function new() {
		super();

		state = {
			user: {
				name: 'Eric',
				unreadCount: 4,
				lastLoginTime: Date.now().getTime() - 1000 * 60 * 60 * 24
			}
		};
	}

	override public function render() {
		return jsx('
			<div>
				<h1>
					<$FormattedMessage
						id="app.title"
						defaultMessage="React Intl Translations Example"
					/>
				</h1>

				<$Greeting user=${state.user} />

				<h4>
					<$FormattedMessage
						id="app.locales_menu_heading"
						defaultMessage="Locales:"
					/>
				</h4>

				<$LocalesMenu />
			</div>
		');
	}
}
