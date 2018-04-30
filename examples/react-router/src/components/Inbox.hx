package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.intl.comp.FormattedNumber;
import react.intl.comp.FormattedPlural;

class Inbox extends ReactComponent {
	override public function render() {
		return jsx('
			<div>
				<h2>Inbox</h2>
				<p>
					You have ${' '}
					<$FormattedNumber value=${1000} /> ${' '}
					<$FormattedPlural value=${1000} one="message" other="messages" />.
				</p>
			</div>
		');
	}
}
