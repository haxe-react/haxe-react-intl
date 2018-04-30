package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.router.Route;
import react.router.Link;

class App extends ReactComponent {
	override public function render() {
		return jsx('
			<div>
				<h1>Haxe + React Intl + React Router Example</h1>
				<ul>
					<li><$Link to="/">Home</$Link></li>
					<li><$Link to="/inbox">Inbox</$Link></li>
				</ul>
				<$Route exact=$true path="/" component=$Home />
				<$Route path="/inbox" component=$Inbox />
			</div>
		');
	}
}
