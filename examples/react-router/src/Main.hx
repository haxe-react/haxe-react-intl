package;

import js.Browser;
import react.ReactDOM;
import react.ReactMacro.jsx;
import react.intl.comp.IntlProvider;
import react.router.BrowserRouter;
import components.App;

class Main {
	public static function main() {
		ReactDOM.render(
			jsx('
				<$IntlProvider locale="en">
					<$BrowserRouter>
						<$App />
					</$BrowserRouter>
				</$IntlProvider>
			'),
			Browser.document.getElementById('root')
		);
	}
}
