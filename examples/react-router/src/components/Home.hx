package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.intl.comp.FormattedDate;

class Home extends ReactComponent {
	override public function render() {
		return jsx('
			<div>
				<h2>Home</h2>
				<p>
					Today is ${' '}
					<$FormattedDate value=${Date.now().getTime()} />
				</p>
			</div>
		');
	}
}
